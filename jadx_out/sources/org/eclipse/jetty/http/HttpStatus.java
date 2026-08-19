package org.eclipse.jetty.http;

import com.baidu.mobads.sdk.internal.cb;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes5.dex */
public abstract class HttpStatus {

    /* renamed from: a, reason: collision with root package name */
    public static final Code[] f52135a = new Code[508];

    public enum Code {
        CONTINUE(100, "Continue"),
        SWITCHING_PROTOCOLS(101, "Switching Protocols"),
        PROCESSING(102, "Processing"),
        OK(200, cb.f11288k),
        CREATED(201, "Created"),
        ACCEPTED(202, "Accepted"),
        NON_AUTHORITATIVE_INFORMATION(203, "Non Authoritative Information"),
        NO_CONTENT(204, "No Content"),
        RESET_CONTENT(205, "Reset Content"),
        PARTIAL_CONTENT(206, "Partial Content"),
        MULTI_STATUS(207, "Multi-Status"),
        MULTIPLE_CHOICES(300, "Multiple Choices"),
        MOVED_PERMANENTLY(301, "Moved Permanently"),
        MOVED_TEMPORARILY(302, "Moved Temporarily"),
        FOUND(302, "Found"),
        SEE_OTHER(303, "See Other"),
        NOT_MODIFIED(304, "Not Modified"),
        USE_PROXY(305, "Use Proxy"),
        TEMPORARY_REDIRECT(307, "Temporary Redirect"),
        BAD_REQUEST(MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, "Bad Request"),
        UNAUTHORIZED(401, "Unauthorized"),
        PAYMENT_REQUIRED(402, "Payment Required"),
        FORBIDDEN(403, "Forbidden"),
        NOT_FOUND(404, "Not Found"),
        METHOD_NOT_ALLOWED(405, "Method Not Allowed"),
        NOT_ACCEPTABLE(406, "Not Acceptable"),
        PROXY_AUTHENTICATION_REQUIRED(407, "Proxy Authentication Required"),
        REQUEST_TIMEOUT(TTAdConstant.INTERACTION_TYPE_CODE, "Request Timeout"),
        CONFLICT(TTAdConstant.IMAGE_LIST_CODE, "Conflict"),
        GONE(TTAdConstant.IMAGE_LIST_SIZE_CODE, "Gone"),
        LENGTH_REQUIRED(TTAdConstant.IMAGE_CODE, "Length Required"),
        PRECONDITION_FAILED(TTAdConstant.IMAGE_URL_CODE, "Precondition Failed"),
        REQUEST_ENTITY_TOO_LARGE(TTAdConstant.VIDEO_INFO_CODE, "Request Entity Too Large"),
        REQUEST_URI_TOO_LONG(TTAdConstant.VIDEO_URL_CODE, "Request-URI Too Long"),
        UNSUPPORTED_MEDIA_TYPE(TTAdConstant.VIDEO_COVER_URL_CODE, "Unsupported Media Type"),
        REQUESTED_RANGE_NOT_SATISFIABLE(416, "Requested Range Not Satisfiable"),
        EXPECTATION_FAILED(TTAdConstant.LIVE_FEED_URL_CODE, "Expectation Failed"),
        UNPROCESSABLE_ENTITY(422, "Unprocessable Entity"),
        LOCKED(423, "Locked"),
        FAILED_DEPENDENCY(424, "Failed Dependency"),
        INTERNAL_SERVER_ERROR(500, "Server Error"),
        NOT_IMPLEMENTED(MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE, "Not Implemented"),
        BAD_GATEWAY(502, "Bad Gateway"),
        SERVICE_UNAVAILABLE(503, "Service Unavailable"),
        GATEWAY_TIMEOUT(com.sigmob.sdk.archives.tar.e.f35439E, "Gateway Timeout"),
        HTTP_VERSION_NOT_SUPPORTED(505, "HTTP Version Not Supported"),
        INSUFFICIENT_STORAGE(507, "Insufficient Storage");

        private final int _code;
        private final String _message;

        Code(int i2, String str) {
            this._code = i2;
            this._message = str;
        }

        public boolean equals(int i2) {
            return this._code == i2;
        }

        public int getCode() {
            return this._code;
        }

        public String getMessage() {
            return this._message;
        }

        public boolean isClientError() {
            return HttpStatus.c(this._code);
        }

        public boolean isInformational() {
            return HttpStatus.d(this._code);
        }

        public boolean isRedirection() {
            return HttpStatus.e(this._code);
        }

        public boolean isServerError() {
            return HttpStatus.f(this._code);
        }

        public boolean isSuccess() {
            return HttpStatus.g(this._code);
        }

        @Override // java.lang.Enum
        public String toString() {
            return String.format("[%03d %s]", Integer.valueOf(this._code), getMessage());
        }
    }

    static {
        for (Code code : Code.values()) {
            f52135a[code._code] = code;
        }
    }

    public static Code a(int i2) {
        if (i2 <= 507) {
            return f52135a[i2];
        }
        return null;
    }

    public static String b(int i2) {
        Code codeA = a(i2);
        return codeA != null ? codeA.getMessage() : Integer.toString(i2);
    }

    public static boolean c(int i2) {
        return 400 <= i2 && i2 <= 499;
    }

    public static boolean d(int i2) {
        return 100 <= i2 && i2 <= 199;
    }

    public static boolean e(int i2) {
        return 300 <= i2 && i2 <= 399;
    }

    public static boolean f(int i2) {
        return 500 <= i2 && i2 <= 599;
    }

    public static boolean g(int i2) {
        return 200 <= i2 && i2 <= 299;
    }
}
