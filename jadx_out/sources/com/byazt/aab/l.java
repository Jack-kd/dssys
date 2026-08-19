package com.byazt.aab;

import com.byazt.aab.hp;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;

@com.byazt.kj.hp(hp = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI, 34})
/* loaded from: classes2.dex */
public class l implements com.byazt.nke.j {
    public long hp;

    /* renamed from: l, reason: collision with root package name */
    public hp f17979l;

    public l(File file, long j2, ExecutorService executorService) {
        this.hp = j2;
        try {
            this.f17979l = hp.hp(file, 20210302, 1, j2, executorService);
        } catch (IOException unused) {
        }
    }

    @Override // com.byazt.nke.hp
    /* renamed from: jx, reason: merged with bridge method [inline-methods] */
    public boolean l(String str) throws IOException {
        try {
            try {
                hp.jx jxVarHp = this.f17979l.hp(str);
                boolean z2 = jxVarHp != null;
                com.byazt.qkc.l.hp(jxVarHp);
                return z2;
            } catch (IOException e2) {
                e2.getMessage();
                com.byazt.qkc.l.hp(null);
                return false;
            }
        } catch (Throwable th) {
            com.byazt.qkc.l.hp(null);
            throw th;
        }
    }

    @Override // com.byazt.nke.hp
    /* renamed from: l, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public byte[] hp(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStreamHp;
        hp hpVar = this.f17979l;
        InputStream inputStream = null;
        if (hpVar != null && str != null) {
            try {
                try {
                    hp.jx jxVarHp = hpVar.hp(str);
                    if (jxVarHp == null) {
                        com.byazt.qkc.l.hp(null);
                        com.byazt.qkc.l.hp(null);
                        return null;
                    }
                    inputStreamHp = jxVarHp.hp(0);
                    if (inputStreamHp != null) {
                        try {
                            byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int i2 = inputStreamHp.read(bArr);
                                    if (i2 == -1) {
                                        break;
                                    }
                                    byteArrayOutputStream.write(bArr, 0, i2);
                                }
                            } catch (IOException | OutOfMemoryError unused) {
                                com.byazt.qkc.l.hp(inputStreamHp);
                                com.byazt.qkc.l.hp(byteArrayOutputStream);
                                return null;
                            } catch (Throwable th) {
                                th = th;
                                inputStream = inputStreamHp;
                                com.byazt.qkc.l.hp(inputStream);
                                com.byazt.qkc.l.hp(byteArrayOutputStream);
                                throw th;
                            }
                        } catch (IOException | OutOfMemoryError unused2) {
                            byteArrayOutputStream = null;
                            com.byazt.qkc.l.hp(inputStreamHp);
                            com.byazt.qkc.l.hp(byteArrayOutputStream);
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            byteArrayOutputStream = null;
                            inputStream = inputStreamHp;
                            com.byazt.qkc.l.hp(inputStream);
                            com.byazt.qkc.l.hp(byteArrayOutputStream);
                            throw th;
                        }
                    } else {
                        byteArrayOutputStream = null;
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    com.byazt.qkc.l.hp(inputStreamHp);
                    com.byazt.qkc.l.hp(byteArrayOutputStream);
                    return byteArray;
                } catch (IOException | OutOfMemoryError unused3) {
                    inputStreamHp = null;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        }
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.byazt.nke.j
    public InputStream hp(String str) throws Throwable {
        hp hpVar = this.f17979l;
        if (hpVar == null) {
            return null;
        }
        try {
            hp.jx jxVarHp = hpVar.hp(str);
            if (jxVarHp != null) {
                return jxVarHp.hp(0);
            }
        } catch (IOException e2) {
            e2.getMessage();
        }
        return null;
    }

    @Override // com.byazt.nke.hp
    public boolean hp(String str, byte[] bArr) throws Throwable {
        OutputStream outputStream;
        hp hpVar = this.f17979l;
        if (hpVar != null && bArr != null && str != null) {
            OutputStream outputStreamHp = null;
            outputStreamHp = null;
            hp.C0183hp c0183hp = null;
            try {
                try {
                    hp.C0183hp c0183hpL = hpVar.l(str);
                    if (c0183hpL == null) {
                        com.byazt.qkc.l.hp(null);
                        return false;
                    }
                    try {
                        outputStreamHp = c0183hpL.hp(0);
                        if (outputStreamHp == hp.jx) {
                            com.byazt.qkc.l.hp(outputStreamHp);
                            return false;
                        }
                        outputStreamHp.write(bArr);
                        c0183hpL.hp();
                        this.f17979l.hp();
                        com.byazt.qkc.l.hp(outputStreamHp);
                        return true;
                    } catch (IOException unused) {
                        OutputStream outputStream2 = outputStreamHp;
                        c0183hp = c0183hpL;
                        outputStream = outputStream2;
                        if (c0183hp != null) {
                            try {
                                c0183hp.l();
                            } catch (IOException unused2) {
                            } catch (Throwable th) {
                                outputStreamHp = outputStream;
                                th = th;
                                com.byazt.qkc.l.hp(outputStreamHp);
                                throw th;
                            }
                        }
                        com.byazt.qkc.l.hp(outputStream);
                        return false;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    com.byazt.qkc.l.hp(outputStreamHp);
                    throw th;
                }
            } catch (IOException unused3) {
                outputStream = null;
            }
        }
        return false;
    }

    @Override // com.byazt.nke.hp
    public void hp() {
        try {
            this.f17979l.delete();
        } catch (IOException unused) {
        }
    }

    @Override // com.byazt.nke.hp
    public void hp(double d2) {
        this.f17979l.hp((long) (this.hp * d2));
    }
}
