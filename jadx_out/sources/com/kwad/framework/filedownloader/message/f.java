package com.kwad.framework.filedownloader.message;

import com.kwad.framework.filedownloader.download.d;
import com.kwad.framework.filedownloader.message.MessageSnapshot;
import com.kwad.framework.filedownloader.message.a;
import com.kwad.framework.filedownloader.message.d;
import com.kwad.framework.filedownloader.message.h;
import java.io.File;

/* loaded from: classes4.dex */
public class f {
    public static MessageSnapshot a(int i2, File file, boolean z2) {
        long length = file.length();
        return length > 2147483647L ? z2 ? new d.a(i2, true, length) : new d.b(i2, true, length) : z2 ? new h.a(i2, true, (int) length) : new h.b(i2, true, (int) length);
    }

    public static MessageSnapshot e(com.kwad.framework.filedownloader.a aVar) {
        return aVar.AN() ? new d.e(aVar.getId(), aVar.AE(), aVar.AG()) : new h.e(aVar.getId(), aVar.getSmallFileSoFarBytes(), aVar.getSmallFileTotalBytes());
    }

    public static MessageSnapshot t(MessageSnapshot messageSnapshot) {
        if (messageSnapshot.AH() == -3) {
            return new a.C0587a(messageSnapshot);
        }
        throw new IllegalStateException(com.kwad.framework.filedownloader.f.f.c("take block completed snapshot, must has already be completed. %d %d", Integer.valueOf(messageSnapshot.getId()), Byte.valueOf(messageSnapshot.AH())));
    }

    public static MessageSnapshot a(int i2, long j2, long j3, boolean z2) {
        if (j3 > 2147483647L) {
            if (z2) {
                return new d.i(i2, j2, j3);
            }
            return new d.j(i2, j2, j3);
        }
        if (z2) {
            return new h.i(i2, (int) j2, (int) j3);
        }
        return new h.j(i2, (int) j2, (int) j3);
    }

    public static MessageSnapshot a(int i2, long j2, Throwable th) {
        if (j2 > 2147483647L) {
            return new d.C0588d(i2, j2, th);
        }
        return new h.d(i2, (int) j2, th);
    }

    public static MessageSnapshot a(byte b3, com.kwad.framework.filedownloader.d.c cVar, d.a aVar) {
        IllegalStateException illegalStateException;
        int id = cVar.getId();
        if (b3 == -4) {
            throw new IllegalStateException(com.kwad.framework.filedownloader.f.f.c("please use #catchWarn instead %d", Integer.valueOf(id)));
        }
        if (b3 == -3) {
            if (cVar.AN()) {
                return new d.b(id, false, cVar.getTotal());
            }
            return new h.b(id, false, (int) cVar.getTotal());
        }
        if (b3 == -1) {
            if (cVar.AN()) {
                return new d.C0588d(id, cVar.CX(), aVar.getException());
            }
            return new h.d(id, (int) cVar.CX(), aVar.getException());
        }
        if (b3 == 1) {
            if (cVar.AN()) {
                return new d.f(id, cVar.CX(), cVar.getTotal());
            }
            return new h.f(id, (int) cVar.CX(), (int) cVar.getTotal());
        }
        if (b3 == 2) {
            String filename = cVar.AB() ? cVar.getFilename() : null;
            if (cVar.AN()) {
                return new d.c(id, aVar.CC(), cVar.getTotal(), cVar.CY(), filename);
            }
            return new h.c(id, aVar.CC(), (int) cVar.getTotal(), cVar.CY(), filename);
        }
        if (b3 == 3) {
            if (cVar.AN()) {
                return new d.g(id, cVar.CX());
            }
            return new h.g(id, (int) cVar.CX());
        }
        if (b3 == 5) {
            if (cVar.AN()) {
                return new d.h(id, cVar.CX(), aVar.getException(), aVar.AL());
            }
            return new h.C0589h(id, (int) cVar.CX(), aVar.getException(), aVar.AL());
        }
        if (b3 != 6) {
            String strC = com.kwad.framework.filedownloader.f.f.c("it can't takes a snapshot for the task(%s) when its status is %d,", cVar, Byte.valueOf(b3));
            com.kwad.framework.filedownloader.f.d.d(f.class, "it can't takes a snapshot for the task(%s) when its status is %d,", cVar, Byte.valueOf(b3));
            if (aVar.getException() != null) {
                illegalStateException = new IllegalStateException(strC, aVar.getException());
            } else {
                illegalStateException = new IllegalStateException(strC);
            }
            if (cVar.AN()) {
                return new d.C0588d(id, cVar.CX(), illegalStateException);
            }
            return new h.d(id, (int) cVar.CX(), illegalStateException);
        }
        return new MessageSnapshot.b(id);
    }
}
