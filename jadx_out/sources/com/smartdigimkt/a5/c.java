package com.smartdigimkt.a5;

import com.smartdigimkt.f.i;

/* loaded from: classes5.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public String f39400a;

    /* renamed from: b, reason: collision with root package name */
    public String f39401b;

    /* renamed from: c, reason: collision with root package name */
    public String f39402c;

    /* renamed from: d, reason: collision with root package name */
    public int f39403d;

    /* renamed from: e, reason: collision with root package name */
    public int f39404e;

    /* renamed from: f, reason: collision with root package name */
    public String f39405f;

    public final String toString() {
        StringBuilder sb = new StringBuilder("EcpmEncDecInfo{uniqueId='");
        sb.append(this.f39400a);
        sb.append("', ecpmEncryptInfo='");
        sb.append(this.f39401b);
        sb.append("', ecpmEncPubKey='");
        sb.append(this.f39402c);
        sb.append("', ecpmDecPvtKeyServerId=");
        sb.append(this.f39403d);
        sb.append(", ecpmDecPvtKeyClientId=");
        sb.append(this.f39404e);
        sb.append(", ecpmRmbEncryptInfo='");
        return i.a(sb, this.f39405f, "'}");
    }
}
