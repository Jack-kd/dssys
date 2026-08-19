package com.kwad.sdk.utils.a;

import com.kwad.sdk.utils.a.c;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes4.dex */
final class g implements c.b<Set<String>> {
    static final g bsE = new g();

    private g() {
    }

    private static byte[] e(Set<String> set) {
        if (set.isEmpty()) {
            return new byte[0];
        }
        int size = set.size();
        int[] iArr = new int[size];
        String[] strArr = new String[size];
        int iGh = 0;
        int i2 = 0;
        for (String str : set) {
            if (str == null) {
                iGh += 5;
                iArr[i2] = -1;
            } else {
                int iIu = b.iu(str);
                strArr[i2] = str;
                iArr[i2] = iIu;
                iGh += b.gh(iIu) + iIu;
            }
            i2++;
        }
        b bVar = new b(iGh);
        for (int i3 = 0; i3 < size; i3++) {
            int i4 = iArr[i3];
            bVar.gg(i4);
            if (i4 >= 0) {
                bVar.it(strArr[i3]);
            }
        }
        return bVar.brM;
    }

    private static Set<String> g(byte[] bArr, int i2, int i3) {
        int i4;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (i3 > 0) {
            b bVar = new b(bArr, i2);
            int i5 = i2 + i3;
            while (true) {
                i4 = bVar.position;
                if (i4 >= i5) {
                    break;
                }
                linkedHashSet.add(bVar.getString(bVar.Xj()));
            }
            if (i4 != i5) {
                throw new IllegalArgumentException("Invalid String set");
            }
        }
        return linkedHashSet;
    }

    @Override // com.kwad.sdk.utils.a.c.b
    public final String XD() {
        return "StringSet";
    }

    @Override // com.kwad.sdk.utils.a.c.b
    public final /* synthetic */ Set<String> f(byte[] bArr, int i2, int i3) {
        return g(bArr, i2, i3);
    }

    @Override // com.kwad.sdk.utils.a.c.b
    public final /* synthetic */ byte[] u(Set<String> set) {
        return e(set);
    }
}
