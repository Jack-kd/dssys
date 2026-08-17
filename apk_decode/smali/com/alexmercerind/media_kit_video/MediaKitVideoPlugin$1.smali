.class Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin;

.field final synthetic val$handle:J

.field final synthetic val$height:I

.field final synthetic val$id:J

.field final synthetic val$wid:J

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin;JJJII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;->this$0:Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;->val$handle:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;->val$id:J

    .line 6
    .line 7
    iput-wide p6, p0, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;->val$wid:J

    .line 8
    .line 9
    iput p8, p0, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;->val$width:I

    .line 10
    .line 11
    iput p9, p0, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;->val$height:I

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string p1, "handle"

    .line 17
    .line 18
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string p1, "id"

    .line 26
    .line 27
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string p1, "wid"

    .line 35
    .line 36
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance p1, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1$1;

    .line 44
    .line 45
    invoke-direct {p1, p0}, Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1$1;-><init>(Lcom/alexmercerind/media_kit_video/MediaKitVideoPlugin$1;)V

    .line 46
    .line 47
    .line 48
    const-string p2, "rect"

    .line 49
    .line 50
    invoke-virtual {p0, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    return-void
.end method
