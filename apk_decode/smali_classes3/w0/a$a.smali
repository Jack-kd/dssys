.class public final Lw0/a$a;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw0/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lw0/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw0/a$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lw0/a$a;->b:Lw0/a;

    .line 4
    .line 5
    const/4 p2, 0x3

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lw0/a$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "accelerometer_rotation"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-ne v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void

    .line 18
    :catchall_0
    :goto_0
    const/4 v0, -0x1

    .line 19
    if-ne p1, v0, :cond_1

    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_1
    const/16 v0, 0x15e

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-gt p1, v0, :cond_6

    .line 26
    .line 27
    const/16 v0, 0xa

    .line 28
    .line 29
    if-ge p1, v0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/16 v0, 0x51

    .line 33
    .line 34
    if-gt v0, p1, :cond_3

    .line 35
    .line 36
    const/16 v0, 0x64

    .line 37
    .line 38
    if-ge p1, v0, :cond_3

    .line 39
    .line 40
    const-string p1, "landscapeRight"

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    const/16 v0, 0xab

    .line 44
    .line 45
    if-gt v0, p1, :cond_4

    .line 46
    .line 47
    const/16 v0, 0xbe

    .line 48
    .line 49
    if-ge p1, v0, :cond_4

    .line 50
    .line 51
    const-string p1, "portraitUpsideDown"

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_4
    const/16 v0, 0x105

    .line 55
    .line 56
    if-gt v0, p1, :cond_5

    .line 57
    .line 58
    const/16 v0, 0x118

    .line 59
    .line 60
    if-ge p1, v0, :cond_5

    .line 61
    .line 62
    const-string p1, "landscapeLeft"

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    move-object p1, v1

    .line 66
    goto :goto_2

    .line 67
    :cond_6
    :goto_1
    const-string p1, "portrait"

    .line 68
    .line 69
    :goto_2
    if-eqz p1, :cond_8

    .line 70
    .line 71
    iget-object v0, p0, Lw0/a$a;->b:Lw0/a;

    .line 72
    .line 73
    invoke-static {v0}, Lw0/a;->a(Lw0/a;)Lio/flutter/plugin/common/MethodChannel;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_7

    .line 78
    .line 79
    const-string v0, "channel"

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/j;->u(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_7
    move-object v1, v0

    .line 86
    :goto_3
    const-string v0, "orientationCallback"

    .line 87
    .line 88
    invoke-virtual {v1, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_8
    :goto_4
    return-void
.end method
