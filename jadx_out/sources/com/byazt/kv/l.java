package com.byazt.kv;

import com.byazt.ki.j;
import com.byazt.ki.jx;
import com.byazt.ud.a;
import com.byazt.ud.ec;
import com.byazt.ud.gu;
import com.byazt.ud.jl;
import com.byazt.ud.k;
import com.byazt.ud.q;
import com.byazt.ud.s;
import com.byazt.ud.vv;
import com.byazt.ud.w;
import com.byazt.ud.xs;
import com.byazt.ud.zy;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@com.byazt.kj.hp(hp = {0, 1, 858, 34})
/* loaded from: classes.dex */
public class l {

    @com.byazt.kj.hp(hp = {0, 1, 858, 22})
    /* renamed from: com.byazt.kv.l$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] hp;

        static {
            int[] iArr = new int[jx.values().length];
            hp = iArr;
            try {
                iArr[jx.MINUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                hp[jx.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                hp[jx.DIVISION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                hp[jx.MULTI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                hp[jx.MOD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                hp[jx.EQ.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                hp[jx.NOT_EQ.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                hp[jx.GT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                hp[jx.LT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                hp[jx.GT_EQ.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                hp[jx.LT_EQ.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                hp[jx.DOUBLE_AMP.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                hp[jx.DOUBLE_BAR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public static com.byazt.ii.hp hp(List<com.byazt.ii.hp> list, String str, int i2) {
        jx(list, str, i2);
        Deque<com.byazt.ii.hp> dequeHp = hp(l(list, str, i2));
        if (dequeHp.size() == 1) {
            return dequeHp.getFirst();
        }
        throw new IllegalStateException();
    }

    private static void jx(List<com.byazt.ii.hp> list, String str, int i2) {
        Iterator<com.byazt.ii.hp> it = list.iterator();
        while (it.hasNext()) {
            if (j.hp(it.next().hp())) {
                throw new IllegalArgumentException(str.substring(0, i2));
            }
        }
    }

    private static Deque<com.byazt.ii.hp> l(List<com.byazt.ii.hp> list, String str, int i2) {
        LinkedList<com.byazt.ii.hp> linkedList = new LinkedList(list);
        int i3 = 5;
        while (i3 > 0) {
            LinkedList linkedList2 = new LinkedList();
            for (com.byazt.ii.hp hpVar : linkedList) {
                if (!linkedList2.isEmpty() && jx.hp(((com.byazt.ii.hp) linkedList2.peekLast()).hp()) && ((jx) ((com.byazt.ii.hp) linkedList2.peekLast()).hp()).l() == i3) {
                    com.byazt.ii.hp hpVar2 = (com.byazt.ii.hp) linkedList2.pollLast();
                    com.byazt.ii.hp hpVar3 = (com.byazt.ii.hp) linkedList2.pollLast();
                    if (jx.hp(hpVar3.hp()) || jx.hp(hpVar.hp())) {
                        throw new IllegalArgumentException(str.substring(0, i2));
                    }
                    linkedList2.addLast(hp(hpVar3, hpVar2, hpVar));
                } else {
                    linkedList2.addLast(hpVar);
                }
            }
            i3--;
            linkedList = linkedList2;
        }
        return linkedList;
    }

    private static Deque<com.byazt.ii.hp> hp(Deque<com.byazt.ii.hp> deque) {
        LinkedList linkedList = new LinkedList();
        for (com.byazt.ii.hp hpVar : deque) {
            if (!linkedList.isEmpty() && ((com.byazt.ii.hp) linkedList.peekLast()).hp() == jx.COLON) {
                linkedList.pollLast();
                com.byazt.ii.hp hpVar2 = (com.byazt.ii.hp) linkedList.pollLast();
                if (((com.byazt.ii.hp) linkedList.pollLast()).hp() == jx.QUESTION) {
                    com.byazt.ii.hp hpVar3 = (com.byazt.ii.hp) linkedList.pollLast();
                    ec ecVar = new ec();
                    ecVar.hp(hpVar3);
                    ecVar.l(hpVar2);
                    ecVar.jx(hpVar);
                    linkedList.addLast(ecVar);
                } else {
                    throw new IllegalStateException();
                }
            } else {
                linkedList.addLast(hpVar);
            }
        }
        return linkedList;
    }

    private static com.byazt.ii.hp hp(com.byazt.ii.hp hpVar, com.byazt.ii.hp hpVar2, com.byazt.ii.hp hpVar3) {
        xs guVar;
        switch (AnonymousClass1.hp[((jx) hpVar2.hp()).ordinal()]) {
            case 1:
                guVar = new gu();
                break;
            case 2:
                guVar = new vv();
                break;
            case 3:
                guVar = new com.byazt.ud.hp();
                break;
            case 4:
                guVar = new zy();
                break;
            case 5:
                guVar = new jl();
                break;
            case 6:
                guVar = new com.byazt.ud.j();
                break;
            case 7:
                guVar = new k();
                break;
            case 8:
                guVar = new a();
                break;
            case 9:
                guVar = new q();
                break;
            case 10:
                guVar = new w();
                break;
            case 11:
                guVar = new s();
                break;
            case 12:
                guVar = new com.byazt.ud.l();
                break;
            case 13:
                guVar = new com.byazt.ud.jx();
                break;
            default:
                throw new UnsupportedOperationException(hpVar2.hp().toString());
        }
        guVar.hp(hpVar);
        guVar.l(hpVar3);
        return guVar;
    }

    public static boolean hp(Object obj) {
        if (obj == null) {
            return false;
        }
        if (!(obj instanceof Boolean) || ((Boolean) obj).booleanValue()) {
            return !(obj instanceof Number) || ((Number) obj).floatValue() >= 0.0f;
        }
        return false;
    }
}
