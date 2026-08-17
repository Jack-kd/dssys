.class public final Lcom/kwad/components/core/t/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;IZ)V
    .locals 0
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 1
    invoke-static {p0, p1, p2, p2}, Lcom/kwad/components/core/t/d;->a(Landroid/app/Activity;IZZ)V

    return-void
.end method

.method public static a(Landroid/app/Activity;IZZ)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/kwad/components/core/t/d;->wJ()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/kwad/components/core/t/d;->b(Landroid/app/Activity;IZ)V

    if-nez p3, :cond_1

    const p1, 0x1020002

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/c/a/a;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0, p2, p2}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(Landroid/app/Activity;Z)Z
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    :try_start_0
    const-string p1, "android.view.MiuiWindowManager$LayoutParams"

    const-string v0, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/ab;->au(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "setExtraFlags"

    .line 8
    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-static {p0, v0, p1}, Lcom/kwad/sdk/utils/ab;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static b(Landroid/app/Activity;IZ)V
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    const/high16 p2, 0x4000000

    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    .line 11
    .line 12
    const/high16 p2, -0x80000000

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/view/Window;->addFlags(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/sdk/utils/bd;->Wb()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-static {p0, v1}, Lcom/kwad/components/core/t/d;->a(Landroid/app/Activity;Z)Z

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/utils/bd;->Wc()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-static {p0, v1}, Lcom/kwad/components/core/t/p;->b(Landroid/app/Activity;Z)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    const/16 p0, 0x2500

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/16 p0, 0x500

    .line 41
    .line 42
    :goto_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public static wJ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
