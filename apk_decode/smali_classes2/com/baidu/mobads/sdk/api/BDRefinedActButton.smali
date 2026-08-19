.class public Lcom/baidu/mobads/sdk/api/BDRefinedActButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mAdView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Landroid/content/Context;

    .line 4
    .line 5
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/bu;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mLoader:Ljava/lang/ClassLoader;

    .line 18
    .line 19
    sget-object v2, Lcom/baidu/mobads/sdk/internal/z;->i:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, p1, v0, v1}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroid/view/View;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mAdView:Landroid/view/View;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 32
    .line 33
    const/4 v1, -0x2

    .line 34
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void

    .line 44
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public setAdData(Lcom/baidu/mobads/sdk/api/NativeResponse;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-class v3, Ljava/lang/Object;

    .line 10
    .line 11
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v3, "setAdData"

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setButtonBackgroundColor(I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v3, "setButtonBackgroundColor"

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setButtonFontSizeSp(I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v3, "setButtonFontSizeSp"

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setButtonFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-class v3, Landroid/graphics/Typeface;

    .line 10
    .line 11
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v3, "setButtonFontTypeFace"

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v3, "setButtonTextColor"

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setIsShowDialog(Z)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->i:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDRefinedActButton;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 10
    .line 11
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v3, "setIsShowDialog"

    .line 24
    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
