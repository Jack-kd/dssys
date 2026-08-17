package com.sigmob.sdk.base.views;

import com.czhj.sdk.common.utils.Preconditions;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.fourthline.cling.support.model.dlna.DLNAProfiles;

/* renamed from: com.sigmob.sdk.base.views.n, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public class C1302n implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    private static final List<String> f37117a = Arrays.asList(DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_JPEG, DLNAProfiles.DLNAMimeTypes.MIME_IMAGE_PNG, "image/bmp", "image/gif");

    /* renamed from: b, reason: collision with root package name */
    private static final List<String> f37118b = Arrays.asList("application/x-javascript");
    private static final long serialVersionUID = 0;

    /* renamed from: c, reason: collision with root package name */
    private final String f37119c;

    /* renamed from: d, reason: collision with root package name */
    private final b f37120d;

    /* renamed from: e, reason: collision with root package name */
    private final a f37121e;

    /* renamed from: f, reason: collision with root package name */
    private final int f37122f;

    /* renamed from: g, reason: collision with root package name */
    private final int f37123g;

    /* renamed from: com.sigmob.sdk.base.views.n$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f37124a;

        static {
            int[] iArr = new int[b.values().length];
            f37124a = iArr;
            try {
                iArr[b.IFRAME_RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37124a[b.HTML_RESOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37124a[b.STATIC_RESOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37124a[b.NATIVE_RESOURCE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f37124a[b.URL_RESOURCE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.sigmob.sdk.base.views.n$a */
    public enum a {
        NONE,
        IMAGE,
        JAVASCRIPT
    }

    /* renamed from: com.sigmob.sdk.base.views.n$b */
    public enum b {
        STATIC_RESOURCE,
        HTML_RESOURCE,
        IFRAME_RESOURCE,
        NATIVE_RESOURCE,
        URL_RESOURCE
    }

    public C1302n(String str, b bVar, a aVar, int i2, int i3) {
        Preconditions.NoThrow.checkNotNull(str);
        Preconditions.NoThrow.checkNotNull(bVar);
        Preconditions.NoThrow.checkNotNull(aVar);
        this.f37119c = str;
        this.f37120d = bVar;
        this.f37121e = aVar;
        this.f37122f = i2;
        this.f37123g = i3;
    }

    public String a() {
        return this.f37119c;
    }

    public b b() {
        return this.f37120d;
    }

    public a c() {
        return this.f37121e;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0047 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String a(java.lang.String r6, java.lang.String r7) {
        /*
            r5 = this;
            int[] r0 = com.sigmob.sdk.base.views.C1302n.AnonymousClass1.f37124a
            com.sigmob.sdk.base.views.n$b r1 = r5.f37120d
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 1
            java.lang.String r2 = "CreativeType.JAVASCRIPT"
            java.lang.String r3 = "CreativeType.IMAGE"
            r4 = 0
            if (r0 == r1) goto L38
            r1 = 2
            if (r0 == r1) goto L38
            r1 = 3
            if (r0 == r1) goto L1f
            r1 = 4
            if (r0 == r1) goto L38
            r1 = 5
            if (r0 == r1) goto L38
            goto L51
        L1f:
            com.sigmob.sdk.base.views.n$a r0 = com.sigmob.sdk.base.views.C1302n.a.IMAGE
            com.sigmob.sdk.base.views.n$a r1 = r5.f37121e
            if (r0 != r1) goto L2f
            com.czhj.sdk.logger.SigmobLog.d(r3)
            boolean r0 = android.text.TextUtils.isEmpty(r6)
            if (r0 == 0) goto L47
            return r7
        L2f:
            com.sigmob.sdk.base.views.n$a r6 = com.sigmob.sdk.base.views.C1302n.a.JAVASCRIPT
            if (r6 != r1) goto L37
            com.czhj.sdk.logger.SigmobLog.d(r2)
            return r7
        L37:
            return r4
        L38:
            com.sigmob.sdk.base.views.n$a r0 = com.sigmob.sdk.base.views.C1302n.a.IMAGE
            com.sigmob.sdk.base.views.n$a r1 = r5.f37121e
            if (r0 != r1) goto L49
            com.czhj.sdk.logger.SigmobLog.d(r3)
            boolean r7 = android.text.TextUtils.isEmpty(r7)
            if (r7 == 0) goto L48
        L47:
            return r6
        L48:
            return r4
        L49:
            com.sigmob.sdk.base.views.n$a r6 = com.sigmob.sdk.base.views.C1302n.a.JAVASCRIPT
            if (r6 != r1) goto L51
            com.czhj.sdk.logger.SigmobLog.d(r2)
            return r7
        L51:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sigmob.sdk.base.views.C1302n.a(java.lang.String, java.lang.String):java.lang.String");
    }

    public void a(C1303o c1303o) {
        Preconditions.NoThrow.checkNotNull(c1303o);
        int i2 = AnonymousClass1.f37124a[this.f37120d.ordinal()];
        if (i2 == 1) {
            c1303o.a("<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.f37122f + "\" height=\"" + this.f37123g + "\" src=\"" + this.f37119c + "\"></iframe>");
            return;
        }
        if (i2 == 2) {
            c1303o.a(this.f37119c);
            return;
        }
        if (i2 != 3) {
            if (i2 != 4) {
                if (i2 != 5) {
                    return;
                }
                c1303o.loadUrl(this.f37119c);
                return;
            } else {
                if (this.f37119c.toLowerCase().startsWith("file://")) {
                    c1303o.loadUrl(this.f37119c);
                    return;
                }
                c1303o.loadUrl("file://" + this.f37119c);
                return;
            }
        }
        a aVar = this.f37121e;
        if (aVar == a.IMAGE) {
            c1303o.a("<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.f37119c + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>");
            return;
        }
        if (aVar == a.JAVASCRIPT) {
            c1303o.a("<script src=\"" + this.f37119c + "\"></script>");
        }
    }
}
