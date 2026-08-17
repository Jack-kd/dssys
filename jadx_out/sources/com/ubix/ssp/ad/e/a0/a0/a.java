package com.ubix.ssp.ad.e.a0.a0;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.ubix.ssp.ad.e.a0.u;
import com.ubix.ssp.open.AdError;

/* loaded from: classes5.dex */
public class a extends AdError {

    /* renamed from: a, reason: collision with root package name */
    private int f46094a;

    /* renamed from: b, reason: collision with root package name */
    private String f46095b;

    /* renamed from: c, reason: collision with root package name */
    private int f46096c;

    /* renamed from: d, reason: collision with root package name */
    private int f46097d;

    /* renamed from: e, reason: collision with root package name */
    private int f46098e;

    /* renamed from: f, reason: collision with root package name */
    private String f46099f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f46100g;

    private a() {
        this.f46094a = -1;
        this.f46095b = "";
        this.f46099f = "unknown";
        this.f46100g = false;
    }

    public static AdError a(int i2, String str) {
        return new a(6, 8, i2, str);
    }

    public static AdError b(int i2, String str) {
        return new a(4, 1, i2, str);
    }

    public static AdError c(int i2, String str) {
        return new a(4, 5, i2, str);
    }

    public static AdError d(int i2, String str) {
        return new a(4, 4, i2, str);
    }

    public static AdError e(int i2, String str) {
        return new a(1, 1, i2, str);
    }

    public static AdError f(int i2, String str) {
        return new a(1, 3, i2, str);
    }

    public static AdError g(int i2, String str) {
        return new a(3, 1, i2, str);
    }

    public static AdError h(int i2, String str) {
        return new a(3, 4, i2, str);
    }

    public static AdError i(int i2, String str) {
        return new a(3, 3, i2, str);
    }

    public static AdError j(int i2, String str) {
        return new a(2, 1, i2, str);
    }

    public static AdError k(int i2, String str) {
        return new a(2, 3, i2, str);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0057. Please report as an issue. */
    @Override // com.ubix.ssp.open.AdError
    public int getErrorCode() {
        String str;
        String str2;
        int i2;
        b();
        int i3 = this.f46097d;
        if (i3 == 1) {
            str = "传入参数有误，请查看logcat检查 [code:%s]";
            switch (this.f46098e) {
                case 1:
                    this.f46094a = 10001;
                    str2 = "APP_ID为空，请检查对应的值是否传入正确 [code:%s]";
                    break;
                case 2:
                    this.f46094a = 10002;
                    str2 = "POS_ID为空，请检查对应的值是否传入正确 [code:%s]";
                    break;
                case 3:
                    this.f46094a = 10003;
                    str2 = "AdSize参数异常，请检查对应的值是否传入正确 [code:%s]";
                    break;
                case 4:
                    i2 = AVMDLDataLoader.KeyIsStoMaxIdleTimeSec;
                    this.f46094a = i2;
                    str2 = str;
                    break;
                case 5:
                    this.f46094a = 30001;
                    str2 = "Activity为空，或广告不可见 [code:%s]";
                    break;
                case 6:
                default:
                    this.f46094a = 10007;
                    str2 = "请求发生错误 [code:%s]";
                    break;
                case 7:
                    this.f46094a = 10008;
                    str2 = "请勿频繁请求 [code:%s]";
                    break;
                case 8:
                    this.f46094a = AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh1;
                    str2 = "SDK未初始化，请先初始化SDK [code:%s]";
                    break;
                case 9:
                    this.f46094a = AVMDLDataLoader.KeyIsStoIoWriteLimitKBTh2;
                    str2 = "SDK已关闭，请勿重复请求 [code:%s]";
                    break;
                case 10:
                    i2 = 10009;
                    this.f46094a = i2;
                    str2 = str;
                    break;
            }
            this.f46095b = str2;
        } else if (i3 == 8) {
            int i4 = this.f46098e;
            if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) {
                this.f46094a = 60001;
                str2 = "激励视频奖励获取失败 [code:%s]";
                this.f46095b = str2;
            }
        } else if (i3 == 3) {
            str = "无填充，请勿频繁重试 [code:%s]";
            switch (this.f46098e) {
                case 1:
                case 2:
                    this.f46094a = 20002;
                    str2 = "网络连接异常 [code:%s]";
                    this.f46095b = str2;
                    break;
                case 3:
                    this.f46094a = 20003;
                    str2 = "请求超时 [code:%s]";
                    this.f46095b = str2;
                    break;
                case 4:
                case 5:
                    this.f46094a = 20001;
                    str2 = String.format("无填充，请勿频繁重试 [code:%s]", this.f46099f, a());
                    this.f46095b = str2;
                    break;
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    this.f46094a = 20001;
                    str2 = str;
                    this.f46095b = str2;
                    break;
            }
        } else {
            if (i3 == 4) {
                switch (this.f46098e) {
                    case 1:
                    case 2:
                        this.f46094a = 30005;
                        str2 = "视频加载出错 [code:%s]";
                        break;
                    case 3:
                        this.f46094a = 30006;
                        str2 = "视频播放中出错 [code:%s]";
                        break;
                    case 4:
                        this.f46094a = 30002;
                        str2 = "广告已过期，请重新请求新广告 [code:%s]";
                        break;
                    case 5:
                        this.f46094a = 30004;
                        str2 = "资源下载失败 [code:%s]";
                        break;
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        this.f46094a = 30004;
                        str2 = "模板渲染失败 [code:%s]";
                        break;
                    default:
                        this.f46094a = 30007;
                        str2 = "渲染异常 [code:%s]";
                        break;
                }
            } else if (i3 == 5 && this.f46098e == 3) {
                this.f46094a = 30003;
                str2 = "同一条广告请勿多次展示 [code:%s]";
            }
            this.f46095b = str2;
        }
        return this.f46094a;
    }

    @Override // com.ubix.ssp.open.AdError
    public String getErrorMessage() {
        if (TextUtils.isEmpty(this.f46095b)) {
            getErrorCode();
        }
        if (this.f46095b.contains("[code:%s]")) {
            this.f46095b = String.format(this.f46095b, a());
        }
        return this.f46095b;
    }

    private a(int i2, int i3, int i4, String str) {
        this.f46094a = -1;
        this.f46095b = "";
        this.f46100g = false;
        this.f46099f = str;
        this.f46096c = i2;
        this.f46097d = i3;
        this.f46098e = i4;
    }

    private void b() {
        if (this.f46100g) {
            return;
        }
        this.f46100g = true;
        u.b("", "[ErrorCode=" + a() + ",ErrorMessage=" + this.f46099f + "]");
    }

    public String a() {
        Object objValueOf;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f46096c);
        sb.append("");
        sb.append(this.f46097d);
        sb.append("0");
        int i2 = this.f46098e;
        if (i2 / 10 != 0) {
            objValueOf = Integer.valueOf(i2);
        } else {
            objValueOf = "0" + this.f46098e;
        }
        sb.append(objValueOf);
        return sb.toString();
    }
}
