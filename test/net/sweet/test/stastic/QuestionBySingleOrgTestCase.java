package net.sweet.test.stastic;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import net.sweet.test.base.ApplicationContextTest;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.gtm.csims.business.dataapp.statistics.StatisticsService;

/**
 * 
 * @author Sweet
 * 
 */
public class QuestionBySingleOrgTestCase extends ApplicationContextTest {

	private StatisticsService questionBySingleOrgStsicSvce;

	public void setQuestionBySingleOrgStsicSvce(StatisticsService questionBySingleOrgStsicSvce) {
		this.questionBySingleOrgStsicSvce = questionBySingleOrgStsicSvce;
	}

	public void testGenerateHTML() {
		Map<String, String> params = new HashMap<String, String>();
		params.put("qid", "82cc50c68c5c4bfab519d3d84f9dfe30");
		params.put("orgno", "C1010251000016");
		Map<String, String> keyValue = new HashMap<String, String>();
		keyValue.put("TITLE", "2014");
		keyValue.put("ORGNAME", "中国工商银行股份有限公司四川省分行");

		Map<String, Object> resultData = questionBySingleOrgStsicSvce.doStatistics(params);
		File file = new File(TEST_TEMPOTORY_PATH + "test_report14.html");
		if (file.exists()) {
			file.delete();
		}
		try {
			// file = new File("F:/MyWorkSapces/testtemp/test_report1.html");
			BufferedWriter out = new BufferedWriter(new FileWriter(file, true));
			out.write("<html><head></head><body>");
			out.write(questionBySingleOrgStsicSvce.getHTMLString("14", resultData, keyValue));
			out.write("</body></html>");
			// out.newLine();
			out.close();
			out = null;
			file = null;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public void testGenerateExcel() {
		Map<String, String> params = new HashMap<String, String>();
		params.put("qid", "82cc50c68c5c4bfab519d3d84f9dfe30");
		params.put("orgno", "C1010251000016");
		Map<String, String> keyValue = new HashMap<String, String>();
		keyValue.put("TITLE", "2014");
		keyValue.put("ORGNAME", "中国工商银行股份有限公司四川省分行");

		Map<String, Object> resultData = questionBySingleOrgStsicSvce.doStatistics(params);
		HSSFWorkbook wb = questionBySingleOrgStsicSvce.generateExcel("14", resultData, keyValue);
		try {
			FileOutputStream fos = new FileOutputStream(TEST_TEMPOTORY_PATH + "test_report14.xls");
			try {
				wb.write(fos);
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
}
