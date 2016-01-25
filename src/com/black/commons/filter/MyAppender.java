package com.black.commons.filter;

import org.apache.log4j.DailyRollingFileAppender;
import org.apache.log4j.Priority;

/**
 * @author HP
 * @version 版本号码:
 * @date 2015年10月22日
 * @description 描述: 实现真正Log4j按照级别输出日志文件
 */
public class MyAppender extends DailyRollingFileAppender {
    @Override
    public boolean isAsSevereAsThreshold(Priority priority) {
        //只判断是否相等，而不判断优先级
        return this.getThreshold().equals(priority);
    }
}
