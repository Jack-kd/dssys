.class public interface abstract Lcom/ubix/ssp/open/nativee/NativeAd$CustomizeVideo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/open/nativee/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CustomizeVideo"
.end annotation


# static fields
.field public static final VIDEO_STATUS_PLAY_COMPLETE:I = 0x64

.field public static final VIDEO_STATUS_PLAY_MIDDLE:I = 0x32

.field public static final VIDEO_STATUS_PLAY_ONE_QUARTER:I = 0x19

.field public static final VIDEO_STATUS_PLAY_START:I = 0x0

.field public static final VIDEO_STATUS_PLAY_TERMINAL:I = 0xc8

.field public static final VIDEO_STATUS_PLAY_THREE_QUARTER:I = 0x4b


# virtual methods
.method public abstract getCoverUrl()Ljava/lang/String;
.end method

.method public abstract getMaterialId()Ljava/lang/String;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoUrl()Ljava/lang/String;
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract reportVideoComplete()V
.end method

.method public abstract reportVideoError()V
.end method

.method public abstract reportVideoPause()V
.end method

.method public abstract reportVideoProgress(JJ)V
.end method

.method public abstract reportVideoResume()V
.end method

.method public abstract reportVideoStart()V
.end method
