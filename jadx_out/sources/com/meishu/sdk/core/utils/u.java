package com.meishu.sdk.core.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Dns;

/* loaded from: classes4.dex */
public class u implements Dns {

    /* renamed from: a, reason: collision with root package name */
    public static volatile List<InetAddress> f32030a = new ArrayList();

    public u(String str) {
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String str) throws UnknownHostException {
        return (!"sdk.1rtb.net".equals(str) || f32030a == null || f32030a.isEmpty()) ? Dns.SYSTEM.lookup(str) : f32030a;
    }
}
