package com.smartdigimkt.f;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Objects;
import org.json.JSONObject;

/* loaded from: classes5.dex */
public final class n extends com.smartdigimkt.v3.d {

    /* renamed from: d, reason: collision with root package name */
    public final File f40149d;

    /* renamed from: e, reason: collision with root package name */
    public p f40150e;

    /* renamed from: f, reason: collision with root package name */
    public final q f40151f;

    public n(String str, File file, q qVar) {
        super(str);
        this.f40149d = file;
        this.f40151f = qVar;
    }

    @Override // com.smartdigimkt.v3.d
    public final boolean a(InputStream inputStream) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.f40149d.getAbsolutePath());
            byte[] bArr = new byte[1048576];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 == -1) {
                    fileOutputStream.close();
                    return true;
                }
                fileOutputStream.write(bArr, 0, i2);
                fileOutputStream.flush();
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(com.smartdigimkt.v3.c cVar) {
        com.smartdigimkt.b4.e.a().a(cVar, 2);
    }

    @Override // com.smartdigimkt.v3.d
    public final void a() {
        p pVar = this.f40150e;
        if (pVar != null) {
            File file = this.f40149d;
            q qVar = this.f40151f;
            Objects.toString(file);
            if (file == null || qVar == null) {
                return;
            }
            if (file.exists() && qVar.f40160e == file.length() && qVar.f40158c.equals(j.a(file.getAbsolutePath()))) {
                try {
                    file.renameTo(new File(file.getAbsolutePath().replace(".tmp", ".jar")));
                    pVar.f40155b.a(qVar);
                    JSONObject jSONObject = qVar.f40163h;
                    String string = jSONObject != null ? jSONObject.toString() : "";
                    String.valueOf(com.anythink.core.common.g.c.f3507a);
                    com.smartdigimkt.y3.h.a("2", "", string, "1", "", pVar.f40154a);
                    return;
                } catch (Throwable unused) {
                    return;
                }
            }
            file.exists();
            qVar.f40158c.equals(j.a(file.getAbsolutePath()));
            file.length();
            pVar.f40155b.a((q) null);
            JSONObject jSONObject2 = qVar.f40163h;
            String string2 = jSONObject2 != null ? jSONObject2.toString() : "";
            StringBuilder sb = new StringBuilder("file.exists():");
            sb.append(file.exists());
            sb.append(",md5Check:");
            sb.append(qVar.f40158c.equals(j.a(file.getAbsolutePath())));
            sb.append(",fileLength:");
            sb.append(qVar.f40160e == file.length());
            String string3 = sb.toString();
            String.valueOf(com.anythink.core.common.g.c.f3507a);
            com.smartdigimkt.y3.h.a("2", "", string2, "2", string3, pVar.f40154a);
        }
    }

    @Override // com.smartdigimkt.v3.d
    public final void a(String str) {
        String string;
        p pVar = this.f40150e;
        if (pVar != null) {
            File file = this.f40149d;
            q qVar = this.f40151f;
            Objects.toString(file);
            if (file == null || qVar == null) {
                return;
            }
            try {
                if (file.exists()) {
                    file.delete();
                }
                pVar.f40155b.a((q) null);
                JSONObject jSONObject = qVar.f40163h;
                if (jSONObject != null) {
                    string = jSONObject.toString();
                } else {
                    string = "";
                }
                String str2 = string;
                String.valueOf(com.anythink.core.common.g.c.f3507a);
                com.smartdigimkt.y3.h.a("2", "", str2, "2", str, pVar.f40154a);
            } catch (Throwable unused) {
            }
        }
    }
}
