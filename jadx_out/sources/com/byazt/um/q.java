package com.byazt.um;

import android.graphics.SurfaceTexture;
import android.util.SparseArray;
import android.view.SurfaceHolder;
import com.byazt.um.eb;
import com.byazt.ym.ATSKeep;
import java.util.function.Function;

@com.byazt.kj.hp(hp = {0, 1, 18, 150})
@ATSKeep
/* loaded from: classes3.dex */
public class q implements eb, Function {
    public volatile Function hp;

    /* renamed from: l, reason: collision with root package name */
    public volatile eb f26265l;

    public q(eb ebVar) {
        this.f26265l = ebVar;
    }

    @Override // com.byazt.um.eb
    public void addIVideoPlayerCallback(eb.hp hpVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 32);
        if (hpVar != null) {
            hpVar = new s(hpVar);
        }
        sparseArray.put(1, hpVar);
        this.hp.apply(sparseArray);
    }

    @Override // java.util.function.Function
    public Object apply(Object obj) {
        SparseArray sparseArray = (SparseArray) obj;
        switch (((Integer) sparseArray.get(0)).intValue()) {
            case 1:
                Object kVar = sparseArray.get(1);
                if (kVar != null) {
                    kVar = new k((Function) kVar);
                }
                this.f26265l.setDataSource((zy) kVar);
                return null;
            case 2:
                this.f26265l.setQuietPlay(((Boolean) sparseArray.get(1)).booleanValue());
                return null;
            case 3:
                this.f26265l.setSeekMode(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 4:
                this.f26265l.start(((Boolean) sparseArray.get(1)).booleanValue(), ((Long) sparseArray.get(2)).longValue(), ((Boolean) sparseArray.get(3)).booleanValue());
                return null;
            case 5:
                this.f26265l.restart();
                return null;
            case 6:
                this.f26265l.play();
                return null;
            case 7:
                this.f26265l.pause();
                return null;
            case 8:
                this.f26265l.stop();
                return null;
            case 9:
                this.f26265l.reset();
                return null;
            case 10:
                this.f26265l.release();
                return null;
            case 11:
                this.f26265l.seekTo(((Long) sparseArray.get(1)).longValue());
                return null;
            case 12:
                return Boolean.valueOf(this.f26265l.isFirstFrameSuccess());
            case 13:
                this.f26265l.setSurfaceValid(((Boolean) sparseArray.get(1)).booleanValue());
                return null;
            case 14:
                this.f26265l.setDisplay((SurfaceHolder) sparseArray.get(1));
                return null;
            case 15:
                return this.f26265l.getSurfaceHolder();
            case 16:
                this.f26265l.setSurface((SurfaceTexture) sparseArray.get(1));
                return null;
            case 17:
                return this.f26265l.getSurfaceTexture();
            case 18:
                return Boolean.valueOf(this.f26265l.isCompleted());
            case 19:
                return Boolean.valueOf(this.f26265l.isPrepared());
            case 20:
                return Boolean.valueOf(this.f26265l.isStarted());
            case 21:
                return Integer.valueOf(this.f26265l.getVideoWidth());
            case 22:
                return Integer.valueOf(this.f26265l.getVideoHeight());
            case 23:
                return Boolean.valueOf(this.f26265l.isPlaying());
            case 24:
                return Boolean.valueOf(this.f26265l.isPaused());
            case 25:
                return Boolean.valueOf(this.f26265l.isReleased());
            case 26:
                return Long.valueOf(this.f26265l.getTotalBufferTime());
            case 27:
                return Integer.valueOf(this.f26265l.getBufferCount());
            case 28:
                return Long.valueOf(this.f26265l.getVideoDuration());
            case 29:
                return Long.valueOf(this.f26265l.getCurrentPosition());
            case 30:
                this.f26265l.setLoop(((Boolean) sparseArray.get(1)).booleanValue());
                return null;
            case 31:
                return Boolean.valueOf(this.f26265l.isLooping());
            case 32:
                Object sVar = sparseArray.get(1);
                if (sVar != null) {
                    sVar = new s((Function) sVar);
                }
                this.f26265l.addIVideoPlayerCallback((eb.hp) sVar);
                return null;
            case 33:
                Object sVar2 = sparseArray.get(1);
                if (sVar2 != null) {
                    sVar2 = new s((Function) sVar2);
                }
                this.f26265l.removeIVideoPlayerCallback((eb.hp) sVar2);
                return null;
            case 34:
                this.f26265l.setUpdateProgressInterval(((Integer) sparseArray.get(1)).intValue());
                return null;
            case 35:
                return Integer.valueOf(this.f26265l.getUpdateProgressInterval());
            case 36:
                this.f26265l.setPlaySpeedRatio(((Float) sparseArray.get(1)).floatValue());
                return null;
            case 37:
                return this.f26265l.getCodec();
            default:
                return null;
        }
    }

    @Override // com.byazt.um.eb
    public int getBufferCount() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 27);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.eb
    public String getCodec() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 37);
        return (String) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public long getCurrentPosition() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 29);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.um.eb
    public SurfaceHolder getSurfaceHolder() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 15);
        return (SurfaceHolder) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public SurfaceTexture getSurfaceTexture() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 17);
        return (SurfaceTexture) this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public long getTotalBufferTime() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 26);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.um.eb
    public int getUpdateProgressInterval() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 35);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.eb
    public long getVideoDuration() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 28);
        return ((Long) this.hp.apply(sparseArray)).longValue();
    }

    @Override // com.byazt.um.eb
    public int getVideoHeight() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 22);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.eb
    public int getVideoWidth() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 21);
        return ((Integer) this.hp.apply(sparseArray)).intValue();
    }

    @Override // com.byazt.um.eb
    public boolean isCompleted() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 18);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public boolean isFirstFrameSuccess() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 12);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public boolean isLooping() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 31);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public boolean isPaused() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 24);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public boolean isPlaying() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 23);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public boolean isPrepared() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 19);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public boolean isReleased() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 25);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public boolean isStarted() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 20);
        return ((Boolean) this.hp.apply(sparseArray)).booleanValue();
    }

    @Override // com.byazt.um.eb
    public void pause() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 7);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void play() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 6);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void release() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 10);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void removeIVideoPlayerCallback(eb.hp hpVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 33);
        if (hpVar != null) {
            hpVar = new s(hpVar);
        }
        sparseArray.put(1, hpVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void reset() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 9);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void restart() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 5);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void seekTo(long j2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 11);
        sparseArray.put(1, Long.valueOf(j2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setDataSource(zy zyVar) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 1);
        if (zyVar != null) {
            zyVar = new k(zyVar);
        }
        sparseArray.put(1, zyVar);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setDisplay(SurfaceHolder surfaceHolder) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 14);
        sparseArray.put(1, surfaceHolder);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setLoop(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 30);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setPlaySpeedRatio(float f2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 36);
        sparseArray.put(1, Float.valueOf(f2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setQuietPlay(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 2);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setSeekMode(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 3);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setSurface(SurfaceTexture surfaceTexture) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 16);
        sparseArray.put(1, surfaceTexture);
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setSurfaceValid(boolean z2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 13);
        sparseArray.put(1, Boolean.valueOf(z2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void setUpdateProgressInterval(int i2) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 34);
        sparseArray.put(1, Integer.valueOf(i2));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void start(boolean z2, long j2, boolean z3) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 4);
        sparseArray.put(1, Boolean.valueOf(z2));
        sparseArray.put(2, Long.valueOf(j2));
        sparseArray.put(3, Boolean.valueOf(z3));
        this.hp.apply(sparseArray);
    }

    @Override // com.byazt.um.eb
    public void stop() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(0, 8);
        this.hp.apply(sparseArray);
    }

    public q(Function function) {
        this.hp = function;
    }
}
