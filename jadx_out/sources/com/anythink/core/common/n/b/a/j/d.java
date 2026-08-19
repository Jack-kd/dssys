package com.anythink.core.common.n.b.a.j;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import javax.security.auth.x500.X500Principal;

/* loaded from: classes2.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    private final String f6559a;

    /* renamed from: b, reason: collision with root package name */
    private final int f6560b;

    /* renamed from: c, reason: collision with root package name */
    private int f6561c;

    /* renamed from: d, reason: collision with root package name */
    private int f6562d;

    /* renamed from: e, reason: collision with root package name */
    private int f6563e;

    /* renamed from: f, reason: collision with root package name */
    private int f6564f;

    /* renamed from: g, reason: collision with root package name */
    private char[] f6565g;

    private d(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f6559a = name;
        this.f6560b = name.length();
    }

    private String a() {
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
            i2 = this.f6561c;
            i3 = this.f6560b;
            if (i2 >= i3 || this.f6565g[i2] != ' ') {
                break;
            }
            this.f6561c = i2 + 1;
        }
        if (i2 == i3) {
            return null;
        }
        this.f6562d = i2;
        this.f6561c = i2 + 1;
        while (true) {
            i4 = this.f6561c;
            i5 = this.f6560b;
            if (i4 >= i5 || (c4 = this.f6565g[i4]) == '=' || c4 == ' ') {
                break;
            }
            this.f6561c = i4 + 1;
        }
        if (i4 >= i5) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f6559a);
        }
        this.f6563e = i4;
        if (this.f6565g[i4] == ' ') {
            while (true) {
                i7 = this.f6561c;
                i8 = this.f6560b;
                if (i7 >= i8 || (c3 = this.f6565g[i7]) == '=' || c3 != ' ') {
                    break;
                }
                this.f6561c = i7 + 1;
            }
            if (this.f6565g[i7] != '=' || i7 == i8) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f6559a);
            }
        }
        do {
            i6 = this.f6561c + 1;
            this.f6561c = i6;
            if (i6 >= this.f6560b) {
                break;
            }
        } while (this.f6565g[i6] == ' ');
        int i9 = this.f6563e;
        int i10 = this.f6562d;
        if (i9 - i10 > 4) {
            char[] cArr = this.f6565g;
            if (cArr[i10 + 3] == '.' && (((c2 = cArr[i10]) == 'O' || c2 == 'o') && ((cArr[i10 + 1] == 'I' || cArr[i10 + 1] == 'i') && (cArr[i10 + 2] == 'D' || cArr[i10 + 2] == 'd')))) {
                this.f6562d = i10 + 4;
            }
        }
        char[] cArr2 = this.f6565g;
        int i11 = this.f6562d;
        return new String(cArr2, i11, i9 - i11);
    }

    private String b() {
        int i2 = this.f6561c + 1;
        this.f6561c = i2;
        this.f6562d = i2;
        this.f6563e = i2;
        while (true) {
            int i3 = this.f6561c;
            if (i3 == this.f6560b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f6559a);
            }
            char[] cArr = this.f6565g;
            char c2 = cArr[i3];
            if (c2 == '\"') {
                this.f6561c = i3 + 1;
                while (true) {
                    int i4 = this.f6561c;
                    if (i4 >= this.f6560b || this.f6565g[i4] != ' ') {
                        break;
                    }
                    this.f6561c = i4 + 1;
                }
                char[] cArr2 = this.f6565g;
                int i5 = this.f6562d;
                return new String(cArr2, i5, this.f6563e - i5);
            }
            if (c2 == '\\') {
                cArr[this.f6563e] = e();
            } else {
                cArr[this.f6563e] = c2;
            }
            this.f6561c++;
            this.f6563e++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        r6.f6563e = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String c() {
        /*
            r6 = this;
            int r0 = r6.f6561c
            int r1 = r0 + 4
            int r2 = r6.f6560b
            java.lang.String r3 = "Unexpected end of DN: "
            if (r1 >= r2) goto L95
            r6.f6562d = r0
            int r0 = r0 + 1
            r6.f6561c = r0
        L10:
            int r0 = r6.f6561c
            int r1 = r6.f6560b
            if (r0 == r1) goto L54
            char[] r1 = r6.f6565g
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
            r6.f6563e = r0
            int r0 = r0 + 1
            r6.f6561c = r0
        L31:
            int r0 = r6.f6561c
            int r1 = r6.f6560b
            if (r0 >= r1) goto L56
            char[] r1 = r6.f6565g
            char r1 = r1[r0]
            if (r1 != r4) goto L56
            int r0 = r0 + 1
            r6.f6561c = r0
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
            r6.f6561c = r0
            goto L10
        L54:
            r6.f6563e = r0
        L56:
            int r0 = r6.f6563e
            int r1 = r6.f6562d
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
            int r5 = r6.a(r1)
            byte r5 = (byte) r5
            r3[r4] = r5
            int r1 = r1 + 2
            int r4 = r4 + 1
            goto L69
        L77:
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f6565g
            int r3 = r6.f6562d
            r1.<init>(r2, r3, r0)
            return r1
        L81:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r3)
            java.lang.String r2 = r6.f6559a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L95:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r3)
            java.lang.String r2 = r6.f6559a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.j.d.c():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
    
        r2 = r8.f6562d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        return new java.lang.String(r1, r2, r8.f6563e - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String d() {
        /*
            r8 = this;
            int r0 = r8.f6561c
            r8.f6562d = r0
            r8.f6563e = r0
        L6:
            int r0 = r8.f6561c
            int r1 = r8.f6560b
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f6565g
            int r2 = r8.f6562d
            int r3 = r8.f6563e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.f6565g
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
            int r3 = r8.f6563e
            int r4 = r3 + 1
            r8.f6563e = r4
            r1[r3] = r2
            int r0 = r0 + 1
            r8.f6561c = r0
            goto L6
        L3e:
            int r0 = r8.f6563e
            int r2 = r0 + 1
            r8.f6563e = r2
            char r2 = r8.e()
            r1[r0] = r2
            int r0 = r8.f6561c
            int r0 = r0 + 1
            r8.f6561c = r0
            goto L6
        L51:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f6562d
            int r3 = r8.f6563e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L5c:
            int r2 = r8.f6563e
            r8.f6564f = r2
            int r0 = r0 + 1
            r8.f6561c = r0
            int r0 = r2 + 1
            r8.f6563e = r0
            r1[r2] = r6
        L6a:
            int r0 = r8.f6561c
            int r1 = r8.f6560b
            if (r0 >= r1) goto L83
            char[] r2 = r8.f6565g
            char r7 = r2[r0]
            if (r7 != r6) goto L83
            int r1 = r8.f6563e
            int r7 = r1 + 1
            r8.f6563e = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.f6561c = r0
            goto L6a
        L83:
            if (r0 == r1) goto L8f
            char[] r1 = r8.f6565g
            char r0 = r1[r0]
            if (r0 == r3) goto L8f
            if (r0 == r4) goto L8f
            if (r0 != r5) goto L6
        L8f:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f6565g
            int r2 = r8.f6562d
            int r3 = r8.f6564f
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.anythink.core.common.n.b.a.j.d.d():java.lang.String");
    }

    private char e() {
        int i2 = this.f6561c + 1;
        this.f6561c = i2;
        if (i2 == this.f6560b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f6559a);
        }
        char c2 = this.f6565g[i2];
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
                        return f();
                }
        }
    }

    private char f() {
        int i2;
        int i3;
        int iA = a(this.f6561c);
        this.f6561c++;
        if (iA < 128) {
            return (char) iA;
        }
        if (iA < 192 || iA > 247) {
            return '?';
        }
        if (iA <= 223) {
            i2 = iA & 31;
            i3 = 1;
        } else if (iA <= 239) {
            i2 = iA & 15;
            i3 = 2;
        } else {
            i2 = iA & 7;
            i3 = 3;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = this.f6561c;
            int i6 = i5 + 1;
            this.f6561c = i6;
            if (i6 == this.f6560b || this.f6565g[i6] != '\\') {
                return '?';
            }
            int i7 = i5 + 2;
            this.f6561c = i7;
            int iA2 = a(i7);
            this.f6561c++;
            if ((iA2 & MediaPlayer.MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (iA2 & 63);
        }
        return (char) i2;
    }

    private int a(int i2) {
        int i3;
        int i4;
        int i5 = i2 + 1;
        if (i5 < this.f6560b) {
            char[] cArr = this.f6565g;
            char c2 = cArr[i2];
            if (c2 >= '0' && c2 <= '9') {
                i3 = c2 - '0';
            } else if (c2 >= 'a' && c2 <= 'f') {
                i3 = c2 - 'W';
            } else {
                if (c2 < 'A' || c2 > 'F') {
                    throw new IllegalStateException("Malformed DN: " + this.f6559a);
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
                    throw new IllegalStateException("Malformed DN: " + this.f6559a);
                }
                i4 = c3 - '7';
            }
            return (i3 << 4) + i4;
        }
        throw new IllegalStateException("Malformed DN: " + this.f6559a);
    }

    private String a(String str) {
        String str2;
        this.f6561c = 0;
        this.f6562d = 0;
        this.f6563e = 0;
        this.f6564f = 0;
        this.f6565g = this.f6559a.toCharArray();
        String strA = a();
        if (strA == null) {
            return null;
        }
        do {
            int i2 = this.f6561c;
            if (i2 == this.f6560b) {
                return null;
            }
            char c2 = this.f6565g[i2];
            if (c2 == '\"') {
                int i3 = i2 + 1;
                this.f6561c = i3;
                this.f6562d = i3;
                this.f6563e = i3;
                while (true) {
                    int i4 = this.f6561c;
                    if (i4 != this.f6560b) {
                        char[] cArr = this.f6565g;
                        char c3 = cArr[i4];
                        if (c3 == '\"') {
                            this.f6561c = i4 + 1;
                            while (true) {
                                int i5 = this.f6561c;
                                if (i5 >= this.f6560b || this.f6565g[i5] != ' ') {
                                    break;
                                }
                                this.f6561c = i5 + 1;
                            }
                            char[] cArr2 = this.f6565g;
                            int i6 = this.f6562d;
                            str2 = new String(cArr2, i6, this.f6563e - i6);
                        } else {
                            if (c3 == '\\') {
                                cArr[this.f6563e] = e();
                            } else {
                                cArr[this.f6563e] = c3;
                            }
                            this.f6561c++;
                            this.f6563e++;
                        }
                    } else {
                        throw new IllegalStateException("Unexpected end of DN: " + this.f6559a);
                    }
                }
            } else if (c2 == '#') {
                str2 = c();
            } else if (c2 != '+' && c2 != ',' && c2 != ';') {
                str2 = d();
            } else {
                str2 = "";
            }
            if (str.equalsIgnoreCase(strA)) {
                return str2;
            }
            int i7 = this.f6561c;
            if (i7 >= this.f6560b) {
                return null;
            }
            char c4 = this.f6565g[i7];
            if (c4 != ',' && c4 != ';' && c4 != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f6559a);
            }
            this.f6561c = i7 + 1;
            strA = a();
        } while (strA != null);
        throw new IllegalStateException("Malformed DN: " + this.f6559a);
    }
}
