.class public final Lcom/kwad/components/core/innerEc/live/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final XK:Ljava/lang/CharSequence;

.field public static final XL:Ljava/lang/Float;

.field public static final XM:Ljava/lang/Float;

.field private static XN:I

.field private static XO:I

.field private static XP:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "navigationBarBackground"

    .line 2
    .line 3
    sput-object v0, Lcom/kwad/components/core/innerEc/live/i/c;->XK:Ljava/lang/CharSequence;

    .line 4
    .line 5
    const v0, 0x43838000    # 263.0f

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/kwad/components/core/innerEc/live/i/c;->XL:Ljava/lang/Float;

    .line 13
    .line 14
    const v0, 0x43498000    # 201.5f

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/kwad/components/core/innerEc/live/i/c;->XM:Ljava/lang/Float;

    .line 22
    .line 23
    invoke-static {}, Lcom/kwad/sdk/utils/ai;->VA()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sput v0, Lcom/kwad/components/core/innerEc/live/i/c;->XN:I

    .line 28
    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/Window;[I)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/bd;->Wc()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    move v0, v2

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v0, v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    const/4 v5, -0x1

    .line 33
    if-eq v4, v5, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    sget-object v5, Lcom/kwad/components/core/innerEc/live/i/c;->XK:Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_0

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_0

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    aput p0, p2, v2

    .line 66
    .line 67
    return v1

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    return v2

    .line 72
    :cond_2
    invoke-static {p0}, Lcom/kwad/sdk/c/a/a;->bC(Landroid/content/Context;)Landroid/graphics/Point;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 77
    .line 78
    if-lez p0, :cond_3

    .line 79
    .line 80
    return v1

    .line 81
    :cond_3
    return v2
.end method

.method public static ay(Landroid/content/Context;)I
    .locals 1

    .line 1
    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static az(Landroid/content/Context;)I
    .locals 4

    .line 1
    sget v0, Lcom/kwad/components/core/innerEc/live/i/c;->XP:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/c/a/a;->bC(Landroid/content/Context;)Landroid/graphics/Point;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 10
    .line 11
    sput v0, Lcom/kwad/components/core/innerEc/live/i/c;->XP:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "dimen"

    .line 18
    .line 19
    const-string v2, "android"

    .line 20
    .line 21
    const-string v3, "navigation_bar_height"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    sput p0, Lcom/kwad/components/core/innerEc/live/i/c;->XP:I

    .line 38
    .line 39
    :cond_0
    sget p0, Lcom/kwad/components/core/innerEc/live/i/c;->XP:I

    .line 40
    .line 41
    return p0
.end method

.method public static b(Landroid/content/Context;Z)I
    .locals 0

    .line 1
    sget p1, Lcom/kwad/components/core/innerEc/live/i/c;->XO:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/kwad/sdk/c/a/a;->bE(Landroid/content/Context;)Landroid/graphics/Point;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 10
    .line 11
    sput p0, Lcom/kwad/components/core/innerEc/live/i/c;->XO:I

    .line 12
    .line 13
    :cond_0
    sget p0, Lcom/kwad/components/core/innerEc/live/i/c;->XO:I

    .line 14
    .line 15
    return p0
.end method

.method public static bc(I)V
    .locals 1

    .line 1
    sget v0, Lcom/kwad/components/core/innerEc/live/i/c;->XN:I

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sput p0, Lcom/kwad/components/core/innerEc/live/i/c;->XN:I

    .line 7
    .line 8
    invoke-static {p0}, Lcom/kwad/sdk/utils/ai;->fW(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static c(Landroid/content/Context;Z)I
    .locals 0

    .line 1
    sget-object p1, Lcom/kwad/components/core/innerEc/live/i/c;->XL:Ljava/lang/Float;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p0, p1}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static sK()I
    .locals 1

    .line 1
    sget v0, Lcom/kwad/components/core/innerEc/live/i/c;->XN:I

    .line 2
    .line 3
    return v0
.end method
