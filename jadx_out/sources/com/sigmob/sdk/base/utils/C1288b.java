package com.sigmob.sdk.base.utils;

/* renamed from: com.sigmob.sdk.base.utils.b, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1288b {

    /* renamed from: a, reason: collision with root package name */
    private static final String f36576a = "b";

    /* renamed from: b, reason: collision with root package name */
    private static final String[] f36577b = {"TencentCOS", "COS", "OSS", "BOS", "S3", "apk", "download", "cdn"};

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f36578c = {"x-cos-", "x-oss-", "x-bce-", "x-amz-", "apk", "download", "attachment"};

    /* JADX WARN: Removed duplicated region for block: B:105:0x0252 A[Catch: all -> 0x009a, Exception -> 0x009e, TryCatch #6 {Exception -> 0x009e, all -> 0x009a, blocks: (B:16:0x004b, B:37:0x00af, B:41:0x00bf, B:45:0x00cd, B:47:0x00d5, B:50:0x00e4, B:55:0x00f5, B:57:0x0175, B:59:0x017d, B:61:0x0185, B:65:0x0192, B:67:0x0198, B:69:0x01a0, B:74:0x01b2, B:78:0x01be, B:80:0x01df, B:82:0x01e7, B:84:0x01ef, B:86:0x01f7, B:88:0x01ff, B:90:0x0207, B:94:0x0213, B:96:0x0219, B:98:0x0225, B:102:0x0244, B:103:0x024c, B:105:0x0252, B:108:0x0261, B:110:0x026b, B:112:0x0277, B:118:0x029d, B:121:0x02be, B:124:0x02c9, B:126:0x02cf, B:130:0x02de, B:132:0x02e4, B:134:0x02ec, B:141:0x0301, B:54:0x00f0, B:44:0x00c9, B:40:0x00bb, B:22:0x006b, B:24:0x0073, B:27:0x007a, B:34:0x00a2), top: B:165:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:118:0x029d A[Catch: all -> 0x009a, Exception -> 0x009e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x009e, all -> 0x009a, blocks: (B:16:0x004b, B:37:0x00af, B:41:0x00bf, B:45:0x00cd, B:47:0x00d5, B:50:0x00e4, B:55:0x00f5, B:57:0x0175, B:59:0x017d, B:61:0x0185, B:65:0x0192, B:67:0x0198, B:69:0x01a0, B:74:0x01b2, B:78:0x01be, B:80:0x01df, B:82:0x01e7, B:84:0x01ef, B:86:0x01f7, B:88:0x01ff, B:90:0x0207, B:94:0x0213, B:96:0x0219, B:98:0x0225, B:102:0x0244, B:103:0x024c, B:105:0x0252, B:108:0x0261, B:110:0x026b, B:112:0x0277, B:118:0x029d, B:121:0x02be, B:124:0x02c9, B:126:0x02cf, B:130:0x02de, B:132:0x02e4, B:134:0x02ec, B:141:0x0301, B:54:0x00f0, B:44:0x00c9, B:40:0x00bb, B:22:0x006b, B:24:0x0073, B:27:0x007a, B:34:0x00a2), top: B:165:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02cf A[Catch: all -> 0x009a, Exception -> 0x009e, TRY_LEAVE, TryCatch #6 {Exception -> 0x009e, all -> 0x009a, blocks: (B:16:0x004b, B:37:0x00af, B:41:0x00bf, B:45:0x00cd, B:47:0x00d5, B:50:0x00e4, B:55:0x00f5, B:57:0x0175, B:59:0x017d, B:61:0x0185, B:65:0x0192, B:67:0x0198, B:69:0x01a0, B:74:0x01b2, B:78:0x01be, B:80:0x01df, B:82:0x01e7, B:84:0x01ef, B:86:0x01f7, B:88:0x01ff, B:90:0x0207, B:94:0x0213, B:96:0x0219, B:98:0x0225, B:102:0x0244, B:103:0x024c, B:105:0x0252, B:108:0x0261, B:110:0x026b, B:112:0x0277, B:118:0x029d, B:121:0x02be, B:124:0x02c9, B:126:0x02cf, B:130:0x02de, B:132:0x02e4, B:134:0x02ec, B:141:0x0301, B:54:0x00f0, B:44:0x00c9, B:40:0x00bb, B:22:0x006b, B:24:0x0073, B:27:0x007a, B:34:0x00a2), top: B:165:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f0 A[Catch: all -> 0x009a, Exception -> 0x009e, TryCatch #6 {Exception -> 0x009e, all -> 0x009a, blocks: (B:16:0x004b, B:37:0x00af, B:41:0x00bf, B:45:0x00cd, B:47:0x00d5, B:50:0x00e4, B:55:0x00f5, B:57:0x0175, B:59:0x017d, B:61:0x0185, B:65:0x0192, B:67:0x0198, B:69:0x01a0, B:74:0x01b2, B:78:0x01be, B:80:0x01df, B:82:0x01e7, B:84:0x01ef, B:86:0x01f7, B:88:0x01ff, B:90:0x0207, B:94:0x0213, B:96:0x0219, B:98:0x0225, B:102:0x0244, B:103:0x024c, B:105:0x0252, B:108:0x0261, B:110:0x026b, B:112:0x0277, B:118:0x029d, B:121:0x02be, B:124:0x02c9, B:126:0x02cf, B:130:0x02de, B:132:0x02e4, B:134:0x02ec, B:141:0x0301, B:54:0x00f0, B:44:0x00c9, B:40:0x00bb, B:22:0x006b, B:24:0x0073, B:27:0x007a, B:34:0x00a2), top: B:165:0x004b }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0213 A[Catch: all -> 0x009a, Exception -> 0x009e, TryCatch #6 {Exception -> 0x009e, all -> 0x009a, blocks: (B:16:0x004b, B:37:0x00af, B:41:0x00bf, B:45:0x00cd, B:47:0x00d5, B:50:0x00e4, B:55:0x00f5, B:57:0x0175, B:59:0x017d, B:61:0x0185, B:65:0x0192, B:67:0x0198, B:69:0x01a0, B:74:0x01b2, B:78:0x01be, B:80:0x01df, B:82:0x01e7, B:84:0x01ef, B:86:0x01f7, B:88:0x01ff, B:90:0x0207, B:94:0x0213, B:96:0x0219, B:98:0x0225, B:102:0x0244, B:103:0x024c, B:105:0x0252, B:108:0x0261, B:110:0x026b, B:112:0x0277, B:118:0x029d, B:121:0x02be, B:124:0x02c9, B:126:0x02cf, B:130:0x02de, B:132:0x02e4, B:134:0x02ec, B:141:0x0301, B:54:0x00f0, B:44:0x00c9, B:40:0x00bb, B:22:0x006b, B:24:0x0073, B:27:0x007a, B:34:0x00a2), top: B:165:0x004b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.utils.C1288b.a(java.lang.String):boolean");
    }

    public static boolean b(String str) {
        if (str == null || str.trim().isEmpty()) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".apk") || lowerCase.split("\\?")[0].endsWith(".apk") || c(lowerCase)) {
            return true;
        }
        return d(lowerCase);
    }

    private static boolean c(String str) {
        String[] strArr = {"/apk/", "/download/", "/package/", "/install/", "/app/", "apk=", "package=", "download=", "file=", "app=", ".apk?", "version=", "install", com.sigmob.sdk.base.n.f36454q};
        for (int i2 = 0; i2 < 14; i2++) {
            if (str.contains(strArr[i2])) {
                return true;
            }
        }
        return false;
    }

    private static boolean d(String str) {
        String[] strArr = {"download.", "dl.", "cdn.", "oss.", "cos.", "bos.", "apk.", "package.", "file.", "storage.", "bucket."};
        for (int i2 = 0; i2 < 11; i2++) {
            if (str.contains(strArr[i2])) {
                return true;
            }
        }
        return false;
    }
}
