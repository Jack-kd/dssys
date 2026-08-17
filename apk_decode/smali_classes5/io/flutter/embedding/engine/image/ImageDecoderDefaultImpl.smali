.class Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/image/ImageDecoder;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterImageDecoderImplDefault"


# instance fields
.field private final listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/core/graphics/b;->a()Landroid/graphics/ColorSpace$Named;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-static {p3}, Landroidx/core/graphics/c;->a(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-static {p1, p3}, Lio/flutter/embedding/engine/image/a;->a(Landroid/graphics/ImageDecoder;Landroid/graphics/ColorSpace;)V

    .line 13
    .line 14
    .line 15
    const/4 p3, 0x1

    .line 16
    invoke-static {p1, p3}, Lio/flutter/embedding/engine/image/b;->a(Landroid/graphics/ImageDecoder;I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {p2}, Lio/flutter/embedding/engine/image/c;->a(Landroid/graphics/ImageDecoder$ImageInfo;)Landroid/util/Size;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p0, p0, Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;->listener:Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-interface {p0, p2, p1}, Lio/flutter/embedding/engine/image/FlutterImageDecoder$HeaderListener;->onImageHeader(II)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public decodeImage(Ljava/nio/ByteBuffer;Lio/flutter/embedding/engine/image/Metadata;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-static {p1}, LZ/a;->a(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    new-instance p2, Lio/flutter/embedding/engine/image/d;

    .line 6
    .line 7
    invoke-direct {p2, p0}, Lio/flutter/embedding/engine/image/d;-><init>(Lio/flutter/embedding/engine/image/ImageDecoderDefaultImpl;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2}, Landroidx/core/graphics/v;->a(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p1

    .line 15
    :catch_0
    move-exception p1

    .line 16
    const-string p2, "FlutterImageDecoderImplDefault"

    .line 17
    .line 18
    const-string v0, "Failed to decode image"

    .line 19
    .line 20
    invoke-static {p2, v0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method
