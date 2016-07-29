package com.gtm.csims.business.question;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.transaction.annotation.Transactional;

import com.gtm.csims.business.dataapp.statistics.BaseStatisticsService;
import com.gtm.csims.business.dataapp.statistics.StatisticsService;

/**
 * 辖区内问题概要情况统计
 * 
 * @author Sweet
 * 
 */
public class QuestionStsicSvce extends BaseStatisticsService implements StatisticsService {
	private static Log log = LogFactory.getLog(QuestionStsicSvce.class);
	private int xCount = 3;

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
		return this.xCount;
	}

	/**
	 * 返回当前统计表需要合并单元格处理的列
	 * 
	 * @return
	 */
	public int[] getMergedColumns() {
		return new int[] { 0 };
	}

	/**
	 * 返回当前统计表需要合并单元格处理的列
	 * 
	 * @return
	 */
	// @Override
	// public int[] getMergedColumns() {
	// return new int[] { 0 };
	// }
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
		return UUID.randomUUID().toString();
	}

	/**
	 * 根据临时表中的初始数据进行合计等计算
	 * 
	 * @param uuid
	 */
	private void calculateTempData(String uuid) {
		// TODO anything
	}

	/**
	 * 查询统计临时表,将返回数据组装为显示表格格式,作为报表结果数据
	 * 
	 * @param uuid
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private Map<String, Object> getResultData(String uuid, Map<String, String> paramsMap) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		// 根据字典表查询所有问题概况条款
		StringBuffer query_sql = new StringBuffer();
		query_sql
		        .append("select (select qqtitle from BS_QUESTION where id = BSQUESTION)  AS qqtitle , ANSWERRESULT, COUNT(ANSWERRESULT) * 100 / 2 AS P from BS_ANSWERRESULT where BSQUESTIONAIRE = '"
		                + paramsMap.get("qid") + "' group by BSQUESTION,ANSWERRESULT order by BSQUESTION");
		List<Map> results = jdbcTemplate.queryForList(query_sql.toString());
		if (!CollectionUtils.isEmpty(results)) {
			for (int i = 0; i < results.size(); i++) {
				Map eachMap = results.get(i);
				// 从第二行开始填充数据
				resultMap.put((i + 1) + "-1", eachMap.get("qqtitle"));
				resultMap.put((i + 1) + "-2", eachMap.get("ANSWERRESULT"));
				resultMap.put((i + 1) + "-3", eachMap.get("P"));
			}
		}
		return resultMap;
	}

}