package com.gtm.csims.business.remind.impl;

import java.util.UUID;

import org.springframework.jdbc.core.JdbcTemplate;

import com.gtm.csims.business.remind.RemindService;

/**
 * 日志、消息保存数据库实现类
 * 
 * @author Sweet
 * 
 */
public class RemindServiceDB2 implements RemindService {

    private JdbcTemplate jdbcTemplate;

    // private String title;
    // private String message;
    // private String receiver;
    // private String sender;
    // private Date createDate;
    // private String state;
    // private String flag;
    // private Date receiveDate;
    // private String category;

    public void sendMessage(String title, String content, String receiver,
            String sender, String category) {
        if (title == null || title.length() < 0) {
            return;
        }
        StringBuffer sql = new StringBuffer(
                "INSERT INTO BS_MESSAGE (Id , TITLE , MESSAGE , RECEIVER , SENDER , CREATEDATE, STATE, FLAG, CATEGORY, RECEIVEDATE ) VALUES ('");
        sql.append(UUID.randomUUID().toString().replace("-", "")).append("','")
                .append(title).append("','").append(content).append("','")
                .append(receiver).append("','").append(sender).append(
                        "', current timestamp,'").append("NONE").append("','")
                .append("UNREAD").append("','").append("SYSTEM_NOTICE").append(
                        "', current timestamp)");
        // System.out.println(sql.toString());
        jdbcTemplate.execute(sql.toString());

    }

    public void writeLog(String content, String priority, String category,
            String thread, String processer) {

        if (content == null || content.length() < 0) {
            return;
        }
        StringBuffer sql = new StringBuffer(
                "INSERT INTO BS_LOG (Id , Message , CreateDate , Priority , Category , Thread ) VALUES ('");
        sql.append(UUID.randomUUID().toString().replace("-", "")).append("','")
                .append(content).append("', current timestamp,'").append(
                        priority).append("','").append(category).append("','")
                .append(thread).append("')");
        // System.out.println(sql.toString());
        jdbcTemplate.execute(sql.toString());

    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

}
