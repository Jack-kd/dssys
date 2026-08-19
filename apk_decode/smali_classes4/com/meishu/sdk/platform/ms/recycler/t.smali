.class public Lcom/meishu/sdk/platform/ms/recycler/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/platform/ms/recycler/t$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static b:F

.field public static c:F

.field public static d:F

.field public static e:F

.field public static f:I

.field public static g:J

.field public static h:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/meishu/sdk/platform/ms/recycler/t$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Ljava/lang/String;Landroid/view/MotionEvent;FI)Lcom/meishu/sdk/core/view/TouchPoint;
    .locals 12

    .line 10
    sget v0, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    sget v0, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    .line 11
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/meishu/sdk/platform/ms/recycler/t;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 12
    new-instance v3, Lcom/meishu/sdk/core/view/TouchPoint;

    sget v4, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    sget v5, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F

    sget-wide v6, Lcom/meishu/sdk/platform/ms/recycler/t;->g:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Lcom/meishu/sdk/core/view/TouchPoint;-><init>(FFJFFJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {}, Lcom/meishu/sdk/platform/ms/recycler/t;->a()V

    return-object v3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 14
    :cond_0
    :try_start_1
    sget-object p0, Lcom/meishu/sdk/platform/ms/recycler/t;->h:Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 15
    sget-object p0, Lcom/meishu/sdk/platform/ms/recycler/t;->h:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/meishu/sdk/platform/ms/recycler/t$a;

    sget v4, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    sget v5, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F

    sget-wide v6, Lcom/meishu/sdk/platform/ms/recycler/t;->g:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    move v10, p2

    move v11, p3

    invoke-interface/range {v3 .. v11}, Lcom/meishu/sdk/platform/ms/recycler/t$a;->a(FFJFFFI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 16
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :cond_1
    :goto_0
    invoke-static {}, Lcom/meishu/sdk/platform/ms/recycler/t;->a()V

    return-object v2

    .line 18
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    new-instance v0, Lcom/meishu/sdk/core/view/TouchPoint;

    sget v1, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    sget v2, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F

    sget-wide v3, Lcom/meishu/sdk/platform/ms/recycler/t;->g:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/meishu/sdk/core/view/TouchPoint;-><init>(FFJFFJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    invoke-static {}, Lcom/meishu/sdk/platform/ms/recycler/t;->a()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcom/meishu/sdk/platform/ms/recycler/t;->a()V

    .line 21
    throw p0

    .line 22
    :cond_2
    invoke-static {}, Lcom/meishu/sdk/platform/ms/recycler/t;->a()V

    return-object v2
.end method

.method public static a()V
    .locals 2

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/meishu/sdk/platform/ms/recycler/t;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24
    sput v0, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    .line 25
    sput v0, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F

    .line 26
    sput v0, Lcom/meishu/sdk/platform/ms/recycler/t;->d:F

    .line 27
    sput v0, Lcom/meishu/sdk/platform/ms/recycler/t;->e:F

    const/4 v0, 0x0

    .line 28
    sput v0, Lcom/meishu/sdk/platform/ms/recycler/t;->f:I

    const-wide/16 v0, 0x0

    .line 29
    sput-wide v0, Lcom/meishu/sdk/platform/ms/recycler/t;->g:J

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/meishu/sdk/platform/ms/recycler/t;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 31
    sput p1, Lcom/meishu/sdk/platform/ms/recycler/t;->f:I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/view/MotionEvent;Lcom/meishu/sdk/platform/ms/recycler/t$a;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sput-object p0, Lcom/meishu/sdk/platform/ms/recycler/t;->a:Ljava/lang/String;

    .line 3
    new-instance p0, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/meishu/sdk/platform/ms/recycler/t;->h:Ljava/lang/ref/SoftReference;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    sput p0, Lcom/meishu/sdk/platform/ms/recycler/t;->b:F

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    sput p0, Lcom/meishu/sdk/platform/ms/recycler/t;->c:F

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    sput p0, Lcom/meishu/sdk/platform/ms/recycler/t;->d:F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    sput p0, Lcom/meishu/sdk/platform/ms/recycler/t;->e:F

    const/4 p0, 0x0

    .line 8
    sput p0, Lcom/meishu/sdk/platform/ms/recycler/t;->f:I

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/meishu/sdk/platform/ms/recycler/t;->g:J

    :cond_1
    :goto_0
    return-void
.end method
