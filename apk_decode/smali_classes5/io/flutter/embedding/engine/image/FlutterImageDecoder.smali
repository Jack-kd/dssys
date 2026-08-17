.class public Lio/flutter/embedding/engine/image/FlutterImageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lio/flutter/embedding/engine/image/Metadata;->create(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)Lio/flutter/embedding/engine/image/Metadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/flutter/embedding/engine/image/Metadata;->isHeif()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x24

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    new-instance v1, Lio/flutter/embedding/engine/image/ImageDecoderHeifApi36Impl;

    .line 18
    .line 19
    invoke-direct {v1}, Lio/flutter/embedding/engine/image/ImageDecoderHeifApi36Impl;-><init>()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-ge v1, v2, :cond_1

    .line 24
    .line 25
    new-instance v1, Lio/flutter/embedding/engine/image/ImageDecoderHeifPre36Impl;

    .line 26
    .line 27
    invoke-direct {v1}, Lio/flutter/embedding/engine/image/ImageDecoderHeifPre36Impl;-><init>()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-nez v1, :cond_2

    .line 33
    .line 34
    new-instance v1, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;-><init>(Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    invoke-interface {v1, p0, v0}, Lio/flutter/embedding/engine/image/ImageDecoder;->decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method
