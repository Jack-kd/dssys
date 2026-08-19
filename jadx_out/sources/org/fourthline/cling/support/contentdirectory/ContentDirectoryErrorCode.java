package org.fourthline.cling.support.contentdirectory;

/* loaded from: classes5.dex */
public enum ContentDirectoryErrorCode {
    NO_SUCH_OBJECT(701, "The specified ObjectID is invalid"),
    UNSUPPORTED_SORT_CRITERIA(709, "Unsupported or invalid sort criteria"),
    CANNOT_PROCESS(720, "Cannot process the request");

    private int code;
    private String description;

    ContentDirectoryErrorCode(int i2, String str) {
        this.code = i2;
        this.description = str;
    }

    public static ContentDirectoryErrorCode getByCode(int i2) {
        for (ContentDirectoryErrorCode contentDirectoryErrorCode : values()) {
            if (contentDirectoryErrorCode.getCode() == i2) {
                return contentDirectoryErrorCode;
            }
        }
        return null;
    }

    public int getCode() {
        return this.code;
    }

    public String getDescription() {
        return this.description;
    }
}
