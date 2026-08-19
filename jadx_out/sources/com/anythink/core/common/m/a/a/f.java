package com.anythink.core.common.m.a.a;

import com.anythink.core.common.m.a.k;
import com.anythink.core.common.n.b.ag;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* loaded from: classes2.dex */
public final class f extends k {

    /* renamed from: a, reason: collision with root package name */
    private final ag f5540a;

    public f(ag agVar) {
        this.f5540a = agVar;
    }

    private InputStream d() {
        ag agVar = this.f5540a;
        if (agVar != null) {
            return agVar.c().i();
        }
        return null;
    }

    @Override // com.anythink.core.common.m.a.k
    public final long a() {
        ag agVar = this.f5540a;
        if (agVar != null) {
            return agVar.b();
        }
        return 0L;
    }

    @Override // com.anythink.core.common.m.a.k
    public final String b() throws IOException {
        try {
            ag agVar = this.f5540a;
            return agVar != null ? agVar.d() : null;
        } finally {
            ag agVar2 = this.f5540a;
            if (agVar2 != null) {
                agVar2.close();
            }
        }
    }

    @Override // com.anythink.core.common.m.a.k
    public final String c() throws IOException {
        try {
            StringBuilder sb = new StringBuilder();
            ag agVar = this.f5540a;
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(agVar != null ? agVar.c().i() : null));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append('\n');
            }
            String string = sb.toString();
            ag agVar2 = this.f5540a;
            if (agVar2 != null) {
                agVar2.close();
            }
            return string;
        } catch (Throwable th) {
            ag agVar3 = this.f5540a;
            if (agVar3 != null) {
                agVar3.close();
            }
            throw th;
        }
    }
}
