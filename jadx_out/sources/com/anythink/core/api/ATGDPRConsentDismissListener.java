package com.anythink.core.api;

/* loaded from: classes.dex */
public interface ATGDPRConsentDismissListener {

    public static class ConsentDismissInfo {
        private int dismissType;
        private String infoMsg;

        public ConsentDismissInfo(String str, int i2) {
            this.infoMsg = str;
            this.dismissType = i2;
        }

        public int getDismissType() {
            return this.dismissType;
        }

        public String getInfoMsg() {
            return this.infoMsg;
        }

        public String toString() {
            return "ConsentDismissInfo{infoMsg='" + this.infoMsg + "', dismissType=" + this.dismissType + '}';
        }
    }

    void onDismiss(ConsentDismissInfo consentDismissInfo);
}
