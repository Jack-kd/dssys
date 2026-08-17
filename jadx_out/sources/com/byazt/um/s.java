package com.byazt.um;

import android.util.SparseArray;
import com.byazt.um.eb;
import com.byazt.ym.ATSKeep;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.function.Function;
import org.json.JSONObject;

@com.byazt.kj.hp(hp = {0, 1, 18, MediaPlayer.MEDIA_PLAYER_OPTION_GET_DROP_COUNT})
@ATSKeep
/* loaded from: classes3.dex */
public class s implements eb.hp, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile eb.hp f26266l;

    public s(eb.hp hpVar) {
        this.f26266l = hpVar;
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                Object qVar = sparseArray.get(1);
                if (qVar != null) {
                    qVar = new q((Function) qVar);
                }
                this.f26266l.onCompletion((eb) qVar);
                break;
            case 2:
                Object qVar2 = sparseArray.get(1);
                Object obj2 = sparseArray.get(2);
                if (qVar2 != null) {
                    qVar2 = new q((Function) qVar2);
                }
                this.f26266l.onRenderStart((eb) qVar2, ((Long) obj2).longValue());
                break;
            case 3:
                Object qVar3 = sparseArray.get(1);
                if (qVar3 != null) {
                    qVar3 = new q((Function) qVar3);
                }
                this.f26266l.onPrepared((eb) qVar3);
                break;
            case 4:
                Object qVar4 = sparseArray.get(1);
                Object jVar = sparseArray.get(2);
                if (qVar4 != null) {
                    qVar4 = new q((Function) qVar4);
                }
                if (jVar != null) {
                    jVar = new j((Function) jVar);
                }
                this.f26266l.onError((eb) qVar4, (jx) jVar);
                break;
            case 5:
                Object qVar5 = sparseArray.get(1);
                Object obj3 = sparseArray.get(2);
                if (qVar5 != null) {
                    qVar5 = new q((Function) qVar5);
                }
                this.f26266l.onSeekCompletion((eb) qVar5, ((Boolean) obj3).booleanValue());
                break;
            case 6:
                Object qVar6 = sparseArray.get(1);
                if (qVar6 != null) {
                    qVar6 = new q((Function) qVar6);
                }
                this.f26266l.onRelease((eb) qVar6);
                break;
            case 7:
                Object qVar7 = sparseArray.get(1);
                Object obj4 = sparseArray.get(2);
                Object obj5 = sparseArray.get(3);
                if (qVar7 != null) {
                    qVar7 = new q((Function) qVar7);
                }
                this.f26266l.onVideoSizeChanged((eb) qVar7, ((Integer) obj4).intValue(), ((Integer) obj5).intValue());
                break;
            case 8:
                Object qVar8 = sparseArray.get(1);
                Object obj6 = sparseArray.get(2);
                Object obj7 = sparseArray.get(3);
                Object obj8 = sparseArray.get(4);
                if (qVar8 != null) {
                    qVar8 = new q((Function) qVar8);
                }
                this.f26266l.onBufferStart((eb) qVar8, ((Integer) obj6).intValue(), ((Integer) obj7).intValue(), ((Integer) obj8).intValue());
                break;
            case 9:
                Object qVar9 = sparseArray.get(1);
                Object obj9 = sparseArray.get(2);
                if (qVar9 != null) {
                    qVar9 = new q((Function) qVar9);
                }
                this.f26266l.onBufferEnd((eb) qVar9, ((Integer) obj9).intValue());
                break;
            case 10:
                Object qVar10 = sparseArray.get(1);
                Object obj10 = sparseArray.get(2);
                if (qVar10 != null) {
                    qVar10 = new q((Function) qVar10);
                }
                this.f26266l.onBufferingUpdate((eb) qVar10, ((Integer) obj10).intValue());
                break;
            case 11:
                Object qVar11 = sparseArray.get(1);
                Object obj11 = sparseArray.get(2);
                Object obj12 = sparseArray.get(3);
                if (qVar11 != null) {
                    qVar11 = new q((Function) qVar11);
                }
                this.f26266l.onPlayPositionUpdate((eb) qVar11, ((Long) obj11).longValue(), ((Long) obj12).longValue());
                break;
            case 12:
                Object qVar12 = sparseArray.get(1);
                Object obj13 = sparseArray.get(2);
                Object obj14 = sparseArray.get(3);
                if (qVar12 != null) {
                    qVar12 = new q((Function) qVar12);
                }
                this.f26266l.onMonitorLog((eb) qVar12, (JSONObject) obj13, (String) obj14);
                break;
            case 13:
                Object qVar13 = sparseArray.get(1);
                if (qVar13 != null) {
                    qVar13 = new q((Function) qVar13);
                }
                this.f26266l.onPause((eb) qVar13);
                break;
            case 14:
                Object qVar14 = sparseArray.get(1);
                if (qVar14 != null) {
                    qVar14 = new q((Function) qVar14);
                }
                this.f26266l.onResume((eb) qVar14);
                break;
            case 15:
                Object qVar15 = sparseArray.get(1);
                if (qVar15 != null) {
                    qVar15 = new q((Function) qVar15);
                }
                this.f26266l.onStart((eb) qVar15);
                break;
        }
        return null;
    }

    @Override // com.byazt.um.eb.hp
    public void onBufferEnd(eb ebVar, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onBufferStart(eb ebVar, int i2, int i3, int i4) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, Integer.valueOf(i2));
        sparseArray.put(3, Integer.valueOf(i3));
        sparseArray.put(4, Integer.valueOf(i4));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onBufferingUpdate(eb ebVar, int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onCompletion(eb ebVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onError(eb ebVar, jx jxVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        if (jxVar != null) {
            jxVar = new j(jxVar);
        }
        sparseArray.put(2, jxVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onMonitorLog(eb ebVar, JSONObject jSONObject, String str) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, jSONObject);
        sparseArray.put(3, str);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onPause(eb ebVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onPlayPositionUpdate(eb ebVar, long j2, long j3) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, Long.valueOf(j2));
        sparseArray.put(3, Long.valueOf(j3));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onPrepared(eb ebVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onRelease(eb ebVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onRenderStart(eb ebVar, long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onResume(eb ebVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onSeekCompletion(eb ebVar, boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onStart(eb ebVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb.hp
    public void onVideoSizeChanged(eb ebVar, int i2, int i3) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        if (ebVar != null) {
            ebVar = new q(ebVar);
        }
        sparseArray.put(1, ebVar);
        sparseArray.put(2, Integer.valueOf(i2));
        sparseArray.put(3, Integer.valueOf(i3));
        this.hp.apply(sparseArray);
    }

    public s(Function function) {
        this.hp = function;
    }
}
