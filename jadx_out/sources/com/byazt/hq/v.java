package com.byazt.hq;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public interface v {
    public static final v hp = new v() { // from class: com.byazt.hq.v.1
        @Override // com.byazt.hq.v
        public List<InetAddress> hp(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            try {
                return Arrays.asList(InetAddress.getAllByName(str));
            } catch (Throwable unused) {
                return new ArrayList();
            }
        }
    };

    List<InetAddress> hp(String str) throws UnknownHostException;
}
