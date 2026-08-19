package com.byazt.cmb;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import javax.security.auth.x500.X500Principal;

@com.byazt.kj.hp(hp = {0, 1, 1286, 38})
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public int f18901a;
    public char[] eb;
    public final String hp;

    /* renamed from: j, reason: collision with root package name */
    public int f18902j;
    public int jx;

    /* renamed from: l, reason: collision with root package name */
    public final int f18903l;

    /* renamed from: w, reason: collision with root package name */
    public int f18904w;

    public j(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.hp = name;
        this.f18903l = name.length();
    }

    private char a() {
        int i2;
        int i3;
        int iHp = hp(this.jx);
        this.jx++;
        if (iHp < 128) {
            return (char) iHp;
        }
        if (iHp < 192 || iHp > 247) {
            return '?';
        }
        if (iHp <= 223) {
            i2 = iHp & 31;
            i3 = 1;
        } else if (iHp <= 239) {
            i2 = iHp & 15;
            i3 = 2;
        } else {
            i2 = iHp & 7;
            i3 = 3;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = this.jx;
            int i6 = i5 + 1;
            this.jx = i6;
            if (i6 == this.f18903l || this.eb[i6] != '\\') {
                return '?';
            }
            int i7 = i5 + 2;
            this.jx = i7;
            int iHp2 = hp(i7);
            this.jx++;
            if ((iHp2 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (iHp2 & 63);
        }
        return (char) i2;
    }

    private String hp() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        char c2;
        int i7;
        int i8;
        char c3;
        char c4;
        while (true) {
            i2 = this.jx;
            i3 = this.f18903l;
            if (i2 >= i3 || this.eb[i2] != ' ') {
                break;
            }
            this.jx = i2 + 1;
        }
        if (i2 == i3) {
            return null;
        }
        this.f18902j = i2;
        this.jx = i2 + 1;
        while (true) {
            i4 = this.jx;
            i5 = this.f18903l;
            if (i4 >= i5 || (c4 = this.eb[i4]) == '=' || c4 == ' ') {
                break;
            }
            this.jx = i4 + 1;
        }
        if (i4 >= i5) {
            throw new IllegalStateException("Unexpected end of DN: " + this.hp);
        }
        this.f18904w = i4;
        if (this.eb[i4] == ' ') {
            while (true) {
                i7 = this.jx;
                i8 = this.f18903l;
                if (i7 >= i8 || (c3 = this.eb[i7]) == '=' || c3 != ' ') {
                    break;
                }
                this.jx = i7 + 1;
            }
            if (this.eb[i7] != '=' || i7 == i8) {
                throw new IllegalStateException("Unexpected end of DN: " + this.hp);
            }
        }
        do {
            i6 = this.jx + 1;
            this.jx = i6;
            if (i6 >= this.f18903l) {
                break;
            }
        } while (this.eb[i6] == ' ');
        int i9 = this.f18904w;
        int i10 = this.f18902j;
        if (i9 - i10 > 4) {
            char[] cArr = this.eb;
            if (cArr[i10 + 3] == '.' && (((c2 = cArr[i10]) == 'O' || c2 == 'o') && ((cArr[i10 + 1] == 'I' || cArr[i10 + 1] == 'i') && (cArr[i10 + 2] == 'D' || cArr[i10 + 2] == 'd')))) {
                this.f18902j = i10 + 4;
            }
        }
        char[] cArr2 = this.eb;
        int i11 = this.f18902j;
        return new String(cArr2, i11, i9 - i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
    
        r2 = r8.f18902j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        return new java.lang.String(r1, r2, r8.f18904w - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String j() {
        /*
            r8 = this;
            int r0 = r8.jx
            r8.f18902j = r0
            r8.f18904w = r0
        L6:
            int r0 = r8.jx
            int r1 = r8.f18903l
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.eb
            int r2 = r8.f18902j
            int r3 = r8.f18904w
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.eb
            char r2 = r1[r0]
            r3 = 44
            r4 = 43
            r5 = 59
            r6 = 32
            if (r2 == r6) goto L5c
            if (r2 == r5) goto L51
            r5 = 92
            if (r2 == r5) goto L3e
            if (r2 == r4) goto L51
            if (r2 == r3) goto L51
            int r3 = r8.f18904w
            int r4 = r3 + 1
            r8.f18904w = r4
            r1[r3] = r2
            int r0 = r0 + 1
            r8.jx = r0
            goto L6
        L3e:
            int r0 = r8.f18904w
            int r2 = r0 + 1
            r8.f18904w = r2
            char r2 = r8.w()
            r1[r0] = r2
            int r0 = r8.jx
            int r0 = r0 + 1
            r8.jx = r0
            goto L6
        L51:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f18902j
            int r3 = r8.f18904w
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L5c:
            int r2 = r8.f18904w
            r8.f18901a = r2
            int r0 = r0 + 1
            r8.jx = r0
            int r0 = r2 + 1
            r8.f18904w = r0
            r1[r2] = r6
        L6a:
            int r0 = r8.jx
            int r1 = r8.f18903l
            if (r0 >= r1) goto L83
            char[] r2 = r8.eb
            char r7 = r2[r0]
            if (r7 != r6) goto L83
            int r1 = r8.f18904w
            int r7 = r1 + 1
            r8.f18904w = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.jx = r0
            goto L6a
        L83:
            if (r0 == r1) goto L8f
            char[] r1 = r8.eb
            char r0 = r1[r0]
            if (r0 == r3) goto L8f
            if (r0 == r4) goto L8f
            if (r0 != r5) goto L6
        L8f:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.eb
            int r2 = r8.f18902j
            int r3 = r8.f18901a
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cmb.j.j():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        r6.f18904w = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String jx() {
        /*
            r6 = this;
            int r0 = r6.jx
            int r1 = r0 + 4
            int r2 = r6.f18903l
            java.lang.String r3 = "Unexpected end of DN: "
            if (r1 >= r2) goto L95
            r6.f18902j = r0
            int r0 = r0 + 1
            r6.jx = r0
        L10:
            int r0 = r6.jx
            int r1 = r6.f18903l
            if (r0 == r1) goto L54
            char[] r1 = r6.eb
            char r2 = r1[r0]
            r4 = 43
            if (r2 == r4) goto L54
            r4 = 44
            if (r2 == r4) goto L54
            r4 = 59
            if (r2 != r4) goto L27
            goto L54
        L27:
            r4 = 32
            if (r2 != r4) goto L42
            r6.f18904w = r0
            int r0 = r0 + 1
            r6.jx = r0
        L31:
            int r0 = r6.jx
            int r1 = r6.f18903l
            if (r0 >= r1) goto L56
            char[] r1 = r6.eb
            char r1 = r1[r0]
            if (r1 != r4) goto L56
            int r0 = r0 + 1
            r6.jx = r0
            goto L31
        L42:
            r4 = 65
            if (r2 < r4) goto L4f
            r4 = 70
            if (r2 > r4) goto L4f
            int r2 = r2 + 32
            char r2 = (char) r2
            r1[r0] = r2
        L4f:
            int r0 = r0 + 1
            r6.jx = r0
            goto L10
        L54:
            r6.f18904w = r0
        L56:
            int r0 = r6.f18904w
            int r1 = r6.f18902j
            int r0 = r0 - r1
            r2 = 5
            if (r0 < r2) goto L81
            r2 = r0 & 1
            if (r2 == 0) goto L81
            int r2 = r0 / 2
            byte[] r3 = new byte[r2]
            int r1 = r1 + 1
            r4 = 0
        L69:
            if (r4 >= r2) goto L77
            int r5 = r6.hp(r1)
            byte r5 = (byte) r5
            r3[r4] = r5
            int r1 = r1 + 2
            int r4 = r4 + 1
            goto L69
        L77:
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.eb
            int r3 = r6.f18902j
            r1.<init>(r2, r3, r0)
            return r1
        L81:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r3)
            java.lang.String r2 = r6.hp
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L95:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r3)
            java.lang.String r2 = r6.hp
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.byazt.cmb.j.jx():java.lang.String");
    }

    private String l() {
        int i2 = this.jx + 1;
        this.jx = i2;
        this.f18902j = i2;
        this.f18904w = i2;
        while (true) {
            int i3 = this.jx;
            if (i3 == this.f18903l) {
                throw new IllegalStateException("Unexpected end of DN: " + this.hp);
            }
            char[] cArr = this.eb;
            char c2 = cArr[i3];
            if (c2 == '\"') {
                this.jx = i3 + 1;
                while (true) {
                    int i4 = this.jx;
                    if (i4 >= this.f18903l || this.eb[i4] != ' ') {
                        break;
                    }
                    this.jx = i4 + 1;
                }
                char[] cArr2 = this.eb;
                int i5 = this.f18902j;
                return new String(cArr2, i5, this.f18904w - i5);
            }
            if (c2 == '\\') {
                cArr[this.f18904w] = w();
            } else {
                cArr[this.f18904w] = c2;
            }
            this.jx++;
            this.f18904w++;
        }
    }

    private char w() {
        int i2 = this.jx + 1;
        this.jx = i2;
        if (i2 == this.f18903l) {
            throw new IllegalStateException("Unexpected end of DN: " + this.hp);
        }
        char c2 = this.eb[i2];
        if (c2 == ' ' || c2 == '%' || c2 == '\\' || c2 == '_' || c2 == '\"' || c2 == '#') {
            return c2;
        }
        switch (c2) {
            case '*':
            case '+':
            case ',':
                return c2;
            default:
                switch (c2) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        return c2;
                    default:
                        return a();
                }
        }
    }

    private int hp(int i2) {
        int i3;
        int i4;
        int i5 = i2 + 1;
        if (i5 < this.f18903l) {
            char[] cArr = this.eb;
            char c2 = cArr[i2];
            if (c2 >= '0' && c2 <= '9') {
                i3 = c2 - '0';
            } else if (c2 >= 'a' && c2 <= 'f') {
                i3 = c2 - 'W';
            } else {
                if (c2 < 'A' || c2 > 'F') {
                    throw new IllegalStateException("Malformed DN: " + this.hp);
                }
                i3 = c2 - '7';
            }
            char c3 = cArr[i5];
            if (c3 >= '0' && c3 <= '9') {
                i4 = c3 - '0';
            } else if (c3 >= 'a' && c3 <= 'f') {
                i4 = c3 - 'W';
            } else {
                if (c3 < 'A' || c3 > 'F') {
                    throw new IllegalStateException("Malformed DN: " + this.hp);
                }
                i4 = c3 - '7';
            }
            return (i3 << 4) + i4;
        }
        throw new IllegalStateException("Malformed DN: " + this.hp);
    }

    public String hp(String str) {
        String strL;
        this.jx = 0;
        this.f18902j = 0;
        this.f18904w = 0;
        this.f18901a = 0;
        this.eb = this.hp.toCharArray();
        String strHp = hp();
        if (strHp == null) {
            return null;
        }
        do {
            int i2 = this.jx;
            if (i2 == this.f18903l) {
                return null;
            }
            char c2 = this.eb[i2];
            if (c2 == '\"') {
                strL = l();
            } else if (c2 == '#') {
                strL = jx();
            } else if (c2 != '+' && c2 != ',' && c2 != ';') {
                strL = j();
            } else {
                strL = "";
            }
            if (str.equalsIgnoreCase(strHp)) {
                return strL;
            }
            int i3 = this.jx;
            if (i3 >= this.f18903l) {
                return null;
            }
            char c3 = this.eb[i3];
            if (c3 != ',' && c3 != ';' && c3 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.hp);
            }
            this.jx = i3 + 1;
            strHp = hp();
        } while (strHp != null);
        throw new IllegalStateException("Malformed DN: " + this.hp);
    }
}
