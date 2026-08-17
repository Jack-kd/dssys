package com.anythink.core.common.n.b;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public interface q {

    /* renamed from: a, reason: collision with root package name */
    public static final q f6915a = new q() { // from class: com.anythink.core.common.n.b.q.1
        @Override // com.anythink.core.common.n.b.q
        public final List<InetAddress> a(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            try {
                return Arrays.asList(InetAddress.getAllByName(str));
            } catch (NullPointerException e2) {
                UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of ".concat(str));
                unknownHostException.initCause(e2);
                throw unknownHostException;
            }
        }
    };

    List<InetAddress> a(String str);
}
