.class Lio/flutter/embedding/engine/image/ImageDecoderHeifPre36Impl;
.super Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterImageDecoderImplHeifPre36"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;-><init>(Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p2, p2, Lio/flutter/embedding/engine/image/Metadata;->orientation:I

    .line 6
    .line 7
    invoke-static {p1, p2}, Lio/flutter/embedding/engine/image/ImageUtils;->applyFlipIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
