.class public final Lms/bz/bd/c/Pgl/pbll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private hp:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lms/bz/bd/c/Pgl/pbll;->hp:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lms/bz/bd/c/Pgl/pbll;->hp:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_2

    invoke-static {}, Lms/bz/bd/c/Pgl/q1;->hp()Lms/bz/bd/c/Pgl/q1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lms/bz/bd/c/Pgl/q1;->hp([Landroid/view/Display;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lms/bz/bd/c/Pgl/q1;->l([Landroid/view/Display;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0}, Lms/bz/bd/c/Pgl/q1;->hp(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Lms/bz/bd/c/Pgl/q1;->l(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lms/bz/bd/c/Pgl/q1;->hp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 6

    :try_start_0
    iget-object p1, p0, Lms/bz/bd/c/Pgl/pbll;->hp:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_2

    invoke-static {}, Lms/bz/bd/c/Pgl/q1;->hp()Lms/bz/bd/c/Pgl/q1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lms/bz/bd/c/Pgl/q1;->hp([Landroid/view/Display;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lms/bz/bd/c/Pgl/q1;->l([Landroid/view/Display;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0}, Lms/bz/bd/c/Pgl/q1;->hp(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Lms/bz/bd/c/Pgl/q1;->hp(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Lms/bz/bd/c/Pgl/q1;->l(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lms/bz/bd/c/Pgl/q1;->l(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
