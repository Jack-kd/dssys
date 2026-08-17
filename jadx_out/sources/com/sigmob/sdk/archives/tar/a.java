package com.sigmob.sdk.archives.tar;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.Locale;
import org.fourthline.cling.model.ServiceReference;

/* loaded from: classes4.dex */
public class a implements com.sigmob.sdk.archives.a, e {

    /* renamed from: b, reason: collision with root package name */
    public static final int f35411b = 31;

    /* renamed from: c, reason: collision with root package name */
    public static final int f35412c = 16877;

    /* renamed from: d, reason: collision with root package name */
    public static final int f35413d = 33188;

    /* renamed from: e, reason: collision with root package name */
    public static final int f35414e = 1000;
    private String ac;
    private int ad;
    private int ae;
    private int af;
    private long ag;
    private long ah;
    private byte ai;
    private String aj;
    private String ak;
    private String al;
    private String am;
    private String an;
    private int ao;
    private int ap;
    private boolean aq;
    private long ar;
    private File as;

    private a() {
        this.ak = "ustar\u0000";
        this.al = e.f35456V;
        this.ac = "";
        this.aj = "";
        String property = System.getProperty("user.name", "");
        property = property.length() > 31 ? property.substring(0, 31) : property;
        this.ae = 0;
        this.af = 0;
        this.am = property;
        this.an = "";
        this.as = null;
    }

    private int c(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 257, 6);
        if (byteBufferWrap.compareTo(ByteBuffer.wrap(e.f35457W.getBytes())) == 0) {
            return 2;
        }
        return byteBufferWrap.compareTo(ByteBuffer.wrap("ustar\u0000".getBytes())) == 0 ? 3 : 0;
    }

    @Override // com.sigmob.sdk.archives.a
    public String a() {
        return this.ac.toString();
    }

    @Override // com.sigmob.sdk.archives.a
    public long b() {
        return this.ag;
    }

    @Override // com.sigmob.sdk.archives.a
    public Date d() {
        return j();
    }

    public String e() {
        return this.aj.toString();
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return a((a) obj);
    }

    public int f() {
        return this.ae;
    }

    public int g() {
        return this.af;
    }

    public String h() {
        return this.am.toString();
    }

    public int hashCode() {
        return a().hashCode();
    }

    public String i() {
        return this.an.toString();
    }

    public Date j() {
        return new Date(this.ah * 1000);
    }

    public File k() {
        return this.as;
    }

    public int l() {
        return this.ad;
    }

    public boolean m() {
        return this.aq;
    }

    public long n() {
        return this.ar;
    }

    public boolean o() {
        return this.ai == 83;
    }

    public boolean p() {
        return this.ai == 76 && this.ac.toString().equals(e.ab);
    }

    public boolean q() {
        byte b3 = this.ai;
        return b3 == 120 || b3 == 88;
    }

    public boolean r() {
        return this.ai == 103;
    }

    public boolean s() {
        File file = this.as;
        if (file != null) {
            return file.isFile();
        }
        byte b3 = this.ai;
        if (b3 == 0 || b3 == 48) {
            return true;
        }
        return !a().endsWith(ServiceReference.DELIMITER);
    }

    public boolean t() {
        return this.ai == 50;
    }

    public boolean u() {
        return this.ai == 49;
    }

    public boolean v() {
        return this.ai == 51;
    }

    public boolean w() {
        return this.ai == 52;
    }

    public boolean x() {
        return this.ai == 54;
    }

    public a[] y() {
        File file = this.as;
        if (file == null || !file.isDirectory()) {
            return new a[0];
        }
        String[] list = this.as.list();
        a[] aVarArr = new a[list.length];
        for (int i2 = 0; i2 < list.length; i2++) {
            aVarArr[i2] = new a(new File(this.as, list[i2]));
        }
        return aVarArr;
    }

    public a(File file) {
        this(file, a(file.getPath(), false));
    }

    private static String a(String str, boolean z2) {
        int iIndexOf;
        String lowerCase = System.getProperty("os.name").toLowerCase(Locale.ENGLISH);
        if (lowerCase != null) {
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char cCharAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.indexOf("netware") > -1 && (iIndexOf = str.indexOf(58)) != -1) {
                str = str.substring(iIndexOf + 1);
            }
        }
        String strReplace = str.replace(File.separatorChar, '/');
        while (!z2 && strReplace.startsWith(ServiceReference.DELIMITER)) {
            strReplace = strReplace.substring(1);
        }
        return strReplace;
    }

    public void b(int i2) {
        this.ae = i2;
    }

    public void c(int i2) {
        this.af = i2;
    }

    public void d(String str) {
        this.an = str;
    }

    public a(File file, String str) {
        this();
        this.as = file;
        this.aj = "";
        if (file.isDirectory()) {
            this.ad = f35412c;
            this.ai = e.f35447M;
            int length = str.length();
            if (length == 0 || str.charAt(length - 1) != '/') {
                str = str + ServiceReference.DELIMITER;
            }
            this.ac = str;
            this.ag = 0L;
        } else {
            this.ad = f35413d;
            this.ai = e.f35442H;
            this.ag = file.length();
            this.ac = str;
        }
        this.ah = file.lastModified() / 1000;
        this.ao = 0;
        this.ap = 0;
    }

    public void a(int i2) {
        this.ad = i2;
    }

    public void b(long j2) {
        if (j2 <= e.f35469m && j2 >= 0) {
            this.ag = j2;
            return;
        }
        throw new IllegalArgumentException("Size is out of range: " + j2);
    }

    public void c(String str) {
        this.am = str;
    }

    public a(String str) {
        this(str, false);
    }

    public void a(int i2, int i3) {
        b(i2);
        c(i3);
    }

    public void b(String str) {
        this.aj = str;
    }

    @Override // com.sigmob.sdk.archives.a
    public boolean c() {
        File file = this.as;
        if (file != null) {
            return file.isDirectory();
        }
        if (this.ai == 53) {
            return true;
        }
        return a().endsWith(ServiceReference.DELIMITER);
    }

    public a(String str, byte b3) {
        this(str);
        this.ai = b3;
        if (b3 == 76) {
            this.ak = e.f35457W;
            this.al = e.f35458X;
        }
    }

    public void a(long j2) {
        this.ah = j2 / 1000;
    }

    public void b(byte[] bArr) {
        this.ac = f.b(bArr, 0, 100);
        this.ad = (int) f.a(bArr, 100, 8);
        this.ae = (int) f.a(bArr, 108, 8);
        this.af = (int) f.a(bArr, 116, 8);
        this.ag = f.a(bArr, 124, 12);
        this.ah = f.a(bArr, MediaPlayer.MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH, 12);
        this.ai = bArr[156];
        this.aj = f.b(bArr, 157, 100);
        this.ak = f.b(bArr, 257, 6);
        this.al = f.b(bArr, 263, 2);
        this.am = f.b(bArr, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME, 32);
        this.an = f.b(bArr, MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, 32);
        this.ao = (int) f.a(bArr, MediaPlayer.MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION, 8);
        this.ap = (int) f.a(bArr, MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_END_TIME, 8);
        if (c(bArr) == 2) {
            this.aq = f.a(bArr, 482);
            this.ar = f.a(bArr, 483, 12);
            return;
        }
        String strB = f.b(bArr, MediaPlayer.MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS, 155);
        if (c() && !this.ac.endsWith(ServiceReference.DELIMITER)) {
            this.ac += ServiceReference.DELIMITER;
        }
        if (strB.length() > 0) {
            this.ac = strB + ServiceReference.DELIMITER + this.ac;
        }
    }

    public a(String str, boolean z2) {
        this();
        String strA = a(str, z2);
        boolean zEndsWith = strA.endsWith(ServiceReference.DELIMITER);
        this.ao = 0;
        this.ap = 0;
        this.ac = strA;
        this.ad = zEndsWith ? f35412c : f35413d;
        this.ai = zEndsWith ? e.f35447M : e.f35442H;
        this.ae = 0;
        this.af = 0;
        this.ag = 0L;
        this.ah = new Date().getTime() / 1000;
        this.aj = "";
        this.am = "";
        this.an = "";
        this.ao = 0;
        this.ap = 0;
    }

    public void a(String str) {
        this.ac = a(str, false);
    }

    public boolean b(a aVar) {
        return aVar.a().startsWith(a());
    }

    public a(byte[] bArr) {
        this();
        b(bArr);
    }

    public void a(String str, String str2) {
        c(str);
        d(str2);
    }

    public void a(Date date) {
        this.ah = date.getTime() / 1000;
    }

    public void a(byte[] bArr) {
        int iC = f.c(this.ah, bArr, f.c(this.ag, bArr, f.b(this.af, bArr, f.b(this.ae, bArr, f.b(this.ad, bArr, f.a(this.ac, bArr, 0, 100), 8), 8), 8), 12), 12);
        int i2 = iC;
        int i3 = 0;
        while (i3 < 8) {
            bArr[i2] = 32;
            i3++;
            i2++;
        }
        bArr[i2] = this.ai;
        for (int iB = f.b(this.ap, bArr, f.b(this.ao, bArr, f.a(this.an, bArr, f.a(this.am, bArr, f.a(this.al, bArr, f.a(this.ak, bArr, f.a(this.aj, bArr, i2 + 1, 100), 6), 2), 32), 32), 8), 8); iB < bArr.length; iB++) {
            bArr[iB] = 0;
        }
        f.d(f.a(bArr), bArr, iC, 8);
    }

    public boolean a(a aVar) {
        return a().equals(aVar.a());
    }
}
