.class public Lcom/beizi/fusion/kn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/kn$d;
    }
.end annotation


# static fields
.field private static k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Lcom/beizi/fusion/kn$d;

.field private e:Z

.field private f:I

.field g:Lcom/beizi/fusion/widget/ScrollClickView;

.field private h:Ljava/lang/Boolean;

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/kn;->d:Lcom/beizi/fusion/kn$d;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/beizi/fusion/kn;->e:Z

    .line 9
    .line 10
    const/16 v0, 0xc8

    .line 11
    .line 12
    iput v0, p0, Lcom/beizi/fusion/kn;->f:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/beizi/fusion/kn;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a(I)Landroid/util/Pair;
    .locals 4

    .line 6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    if-gt v0, p0, :cond_0

    .line 7
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 2
    iget v0, p0, Lcom/beizi/fusion/kn;->c:I

    invoke-static {v0}, Lcom/beizi/fusion/kn;->a(I)Landroid/util/Pair;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/beizi/fusion/kn$a;

    invoke-direct {v1, p0}, Lcom/beizi/fusion/kn$a;-><init>(Lcom/beizi/fusion/kn;)V

    iget v2, p0, Lcom/beizi/fusion/kn;->b:I

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v2, v0

    int-to-long v2, v2

    .line 6
    invoke-static {v1, v2, v3}, Lcom/beizi/fusion/d9;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;)Landroid/view/View;
    .locals 7

    .line 16
    const-string v0, "enter getScrollClick"

    const-string v1, "ScrollClickUtil"

    invoke-static {v1, v0}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    if-eqz v0, :cond_c

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 18
    :cond_0
    new-instance v0, Lcom/beizi/fusion/widget/ScrollClickView;

    iget-object v2, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/beizi/fusion/widget/ScrollClickView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    .line 19
    :try_start_0
    sget-object v2, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "%"

    if-eqz v2, :cond_5

    .line 20
    :try_start_1
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getScrollDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/widget/ScrollClickView;->setScrollDirection(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    sget-object v2, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/widget/ScrollClickView;->setTitleText(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    sget-object v2, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getTitleFont()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/widget/ScrollClickView;->setTitleFont(I)V

    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/kn;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    sget-object v0, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getDetails()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getDownloadDetails()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 27
    const-string v0, "\u4e0b\u8f7d\u5e94\u7528"

    .line 28
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    invoke-virtual {v2, v0}, Lcom/beizi/fusion/widget/ScrollClickView;->setDetailText(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    sget-object v2, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getDetailsFont()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/widget/ScrollClickView;->setDetailsFont(I)V

    .line 30
    sget-object v0, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;->getWidth()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;->getHeight()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    goto :goto_1

    .line 35
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 36
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x64

    goto :goto_2

    .line 38
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    :goto_2
    iget-object v5, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    invoke-virtual {v5, v2}, Lcom/beizi/fusion/widget/ScrollClickView;->setHandWidth(I)V

    .line 40
    iget-object v2, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    invoke-virtual {v2, v0}, Lcom/beizi/fusion/widget/ScrollClickView;->setScrollbarHeight(I)V

    .line 41
    iget-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    invoke-virtual {v0}, Lcom/beizi/fusion/widget/ScrollClickView;->buildRealView()V

    .line 42
    :cond_5
    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;->getTop()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickPositionBean;->getCenterX()Ljava/lang/String;

    move-result-object p3

    .line 44
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "50%"

    const-string v6, "0"

    if-nez v2, :cond_6

    :try_start_2
    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move-object p3, v5

    .line 45
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move-object v0, v5

    .line 46
    :cond_9
    iget-object v2, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/beizi/fusion/vo;->i(Landroid/content/Context;)F

    .line 47
    invoke-virtual {p3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 48
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    mul-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x64

    iput p3, p0, Lcom/beizi/fusion/kn;->i:I

    goto :goto_3

    .line 49
    :cond_a
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/beizi/fusion/kn;->i:I

    .line 50
    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, v3, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    mul-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x64

    iput p3, p0, Lcom/beizi/fusion/kn;->j:I

    goto :goto_4

    .line 52
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/beizi/fusion/kn;->j:I

    .line 53
    :goto_4
    iget-object p3, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    iget v0, p0, Lcom/beizi/fusion/kn;->i:I

    int-to-float v0, v0

    invoke-static {p3, v0}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/beizi/fusion/kn;->i:I

    .line 54
    iget-object p3, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    iget v0, p0, Lcom/beizi/fusion/kn;->j:I

    int-to-float v0, v0

    invoke-static {p3, v0}, Lcom/beizi/fusion/vo;->a(Landroid/content/Context;F)I

    move-result p3

    iput p3, p0, Lcom/beizi/fusion/kn;->j:I

    .line 55
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topInt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/beizi/fusion/kn;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",centerXInt = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/beizi/fusion/kn;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",adWidthDp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",adHeightDp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/beizi/fusion/kn$b;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/beizi/fusion/kn$b;-><init>(Lcom/beizi/fusion/kn;IILandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 58
    iget-object p1, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object p1, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    new-instance p2, Lcom/beizi/fusion/kn$c;

    invoke-direct {p2, p0}, Lcom/beizi/fusion/kn$c;-><init>(Lcom/beizi/fusion/kn;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    :catch_0
    iget-object p1, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    return-object p1

    :cond_c
    :goto_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 12

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter callBackShakeHappened and mShakeStateListener != null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/kn;->d:Lcom/beizi/fusion/kn$d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",!isCallBack = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/beizi/fusion/kn;->e:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrollClickUtil"

    invoke-static {v1, v0}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/kn;->d:Lcom/beizi/fusion/kn$d;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/beizi/fusion/kn;->e:Z

    if-nez v0, :cond_1

    .line 11
    const-string v0, "callback onShakeHappened()"

    invoke-static {v1, v0}, Lcom/beizi/fusion/mh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Lcom/beizi/fusion/kn;->d:Lcom/beizi/fusion/kn$d;

    const-string v10, "105"

    const-string v11, "206"

    const-string v4, "100"

    const-string v5, "200"

    const-string v6, "105"

    const-string v7, "206"

    const-string v8, "100"

    const-string v9, "200"

    invoke-interface/range {v3 .. v11}, Lcom/beizi/fusion/kn$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-boolean v2, p0, Lcom/beizi/fusion/kn;->e:Z

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/ScrollClickView;->stopAnim()V

    :cond_1
    return-void
.end method

.method public a(Lcom/beizi/fusion/kn$d;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/kn;->d:Lcom/beizi/fusion/kn$d;

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sput-object p1, Lcom/beizi/fusion/kn;->k:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;

    .line 3
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getRandomClickTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/beizi/fusion/kn;->c(I)V

    .line 4
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ScrollClickBean;->getRandomClickNum()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/kn;->b(I)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/beizi/fusion/kn;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/beizi/fusion/kn;->e:Z

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/widget/ScrollClickView;->stopAnim()V

    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/beizi/fusion/kn;->d:Lcom/beizi/fusion/kn$d;

    .line 7
    iput-object v0, p0, Lcom/beizi/fusion/kn;->a:Landroid/content/Context;

    .line 8
    iput-object v0, p0, Lcom/beizi/fusion/kn;->g:Lcom/beizi/fusion/widget/ScrollClickView;

    const/16 v0, 0xc8

    .line 9
    iput v0, p0, Lcom/beizi/fusion/kn;->f:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/kn;->c:I

    .line 2
    invoke-direct {p0}, Lcom/beizi/fusion/kn;->c()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/kn;->b:I

    return-void
.end method
