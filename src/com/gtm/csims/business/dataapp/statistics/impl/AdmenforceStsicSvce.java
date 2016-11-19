package com.gtm.csims.business.dataapp.statistics.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateFormatUtils;
import org.springframework.transaction.annotation.Transactional;

import com.gtm.csims.business.dataapp.statistics.BaseStatisticsService;
import com.gtm.csims.business.dataapp.statistics.StatisticsService;
import com.gtm.csims.business.enforce.EnforceService;
import com.gtm.csims.model.BsAdmenforce;

/**
 * 
 * @author Sweet
 * 
 */
public class AdmenforceStsicSvce extends BaseStatisticsService implements StatisticsService {

	private EnforceService enforceService;

	public void setEnforceService(EnforceService enforceService) {
		this.enforceService = enforceService;
	}

	/**
	 * 当前报表需要重新复制行
	 * 
	 * @return
	 */
	public Boolean isOnlyFill() {
		return false;
	}

	/**
	 * 返回报表的横向单元格数量,从第A列（0）开始-AA列
	 */
	public Integer getxCount() {
		return 18;
	}

	/**
	 * 统计流程
	 */
	@Transactional(readOnly = false)
	public Map<String, Object> doStatistics(Map<String, String> paramsMap) {
		String uuid = this.insertTempTable(paramsMap);
		this.calculateTempData(uuid);
		return this.getResultData(uuid, paramsMap);
	}

	/**
	 * 根据统计参数插入临时表数据
	 * 
	 * @param paramsMap
	 */
	private String insertTempTable(Map<String, String> paramsMap) {
		// 针对每一次统计生成唯一ID，以便后期统计最后结果
		String uuid = UUID.randomUUID().toString();
		return uuid;
	}

	/**
	 * 根据临时表中的初始数据进行合计等计算
	 * 
	 * @param uuid
	 */
	private void calculateTempData(String uuid) {
	}

	/**
	 * 查询统计临时表,将返回数据组装为显示表格格式,作为报表结果数据
	 * 
	 * @param uuid
	 * @return
	 */
	private Map<String, Object> getResultData(String uuid, Map<String, String> paramsMap) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<?> result = this.enforceService.queryAllAdmenforce(paramsMap.get("ORGNO").toString());
		// System.out.println(result.size());
		BsAdmenforce row = null;
		for (int j = 1; j <= result.size(); j++) {// 返回数据条数
			// 循环每条数据
			try {
				row = (BsAdmenforce) result.get(j - 1);
			} catch (Exception e) {
				// 如果查询出错
				for (int i = 1; i <= this.getxCount(); i++) {// 15列(A1-O1)
					resultMap.put(j + "-" + i, StringUtils.EMPTY);
				}
				continue;
			}
			resultMap.put(j + "-" + 1, row.getAeno());
			resultMap.put(j + "-" + 2, row.getInnerno());
			resultMap.put(j + "-" + 3, row.getPrjnm());
			resultMap.put(j + "-" + 4, row.getAeorgnm());
			resultMap.put(j + "-" + 5, row.getAeedorgnm());
			resultMap.put(j + "-" + 6, DateFormatUtils.format(row.getAeplanstdate(), DATE_FORMAT));
			resultMap.put(j + "-" + 7, DateFormatUtils.format(row.getAeplantmdate(), DATE_FORMAT));
			resultMap.put(j + "-" + 8, StringEscapeUtils.unescapeJava(row.getAecontent()));
			resultMap.put(j + "-" + 9, row.getAelimt());
			resultMap.put(j + "-" + 10, row.getAeheadman());
			resultMap.put(j + "-" + 11, row.getAemaster());
			resultMap.put(j + "-" + 12, row.getAeother());
			resultMap.put(j + "-" + 13, row.getDeptman());
			resultMap.put(j + "-" + 14, DateFormatUtils.format(row.getDeptauditdate(), DATE_FORMAT));
			resultMap.put(j + "-" + 15, row.getChairman());
			resultMap.put(j + "-" + 16, DateFormatUtils.format(row.getChairauditdate(), DATE_FORMAT));
			try {
				resultMap.put(j + "-" + 17, enforceService.getUsersByUserId(row.getCrtlogin()).getName());
			} catch (Exception e) {
				resultMap.put(j + "-" + 17, row.getCrtlogin());
			}
			resultMap.put(j + "-" + 18, DateFormatUtils.format(row.getCreatedate(), DATE_TIME_FORMAT));
		}
		return resultMap;
	}

}
