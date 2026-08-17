package com.meishu.sdk.core.loader.serverbidding;

import java.util.List;

/* loaded from: classes4.dex */
public class S2sbCacheEntity {
    private List<S2SBDataBean> s2sbList;

    public static class S2SBDataBean {
        private String appId;
        private String pid;
        private String platform;
        private long updateTime;

        public String getAppId() {
            return this.appId;
        }

        public String getPid() {
            return this.pid;
        }

        public String getPlatform() {
            return this.platform;
        }

        public long getUpdateTime() {
            return this.updateTime;
        }

        public boolean isValid() {
            return System.currentTimeMillis() - this.updateTime < 604800000;
        }

        public void setAppId(String str) {
            this.appId = str;
        }

        public void setPid(String str) {
            this.pid = str;
        }

        public void setPlatform(String str) {
            this.platform = str;
        }

        public void setUpdateTime(long j2) {
            this.updateTime = j2;
        }
    }

    public List<S2SBDataBean> getS2sbList() {
        return this.s2sbList;
    }

    public void setS2sbList(List<S2SBDataBean> list) {
        this.s2sbList = list;
    }
}
