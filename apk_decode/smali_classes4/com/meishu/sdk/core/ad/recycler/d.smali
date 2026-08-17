.class public Lcom/meishu/sdk/core/ad/recycler/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/meishu/sdk/core/ad/recycler/d;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    const-class v1, Lcom/meishu/sdk/core/view/TouchAdContainer;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getGDTVersionName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/meishu/sdk/core/ad/recycler/d;->a:Ljava/util/ArrayList;

    .line 20
    .line 21
    const-class v1, Lcom/qq/e/ads/nativ/widget/NativeAdContainer;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getOPPOVersionName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Lcom/meishu/sdk/core/ad/recycler/d;->a:Ljava/util/ArrayList;

    .line 33
    .line 34
    const-class v1, Lcom/heytap/msp/mobad/api/params/NativeAdvanceContainer;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    :try_start_0
    const-string v0, "com.zj.zjsdk.api.v2.nativead.ZJNativeAdContainer"

    .line 40
    .line 41
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    sget-object v1, Lcom/meishu/sdk/core/ad/recycler/d;->a:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :catchall_0
    :cond_2
    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 4

    .line 1
    sget v0, Lcom/meishu/sdk/R$id;->ms_ad_container_tag_recycler:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "meishu_ad_container_tag_recycler"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 6
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/view/ViewGroup;Ljava/lang/Class;Ljava/lang/Class;)[Landroid/view/ViewGroup;
    .locals 6

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 8
    invoke-static {p0}, Lcom/meishu/sdk/core/ad/recycler/d;->a(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    if-nez v2, :cond_0

    .line 9
    aput-object p0, v0, v1

    .line 10
    sget p2, Lcom/meishu/sdk/R$id;->ms_ad_container_tag_recycler:I

    const-string v2, "meishu_ad_container_tag_recycler"

    invoke-virtual {p0, p2, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_0
    aput-object v2, v0, v1

    .line 12
    sget p0, Lcom/meishu/sdk/R$id;->ms_ad_container_class_recycler:I

    invoke-virtual {v2, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move-object p0, v2

    move v4, v3

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 14
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 15
    aput-object p0, v0, v3

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 18
    :cond_4
    :goto_1
    aget-object p0, v0, v3

    if-nez p0, :cond_5

    .line 19
    invoke-static {v2}, Lcom/meishu/sdk/core/ad/recycler/d;->b(Landroid/view/ViewGroup;)V

    .line 20
    :cond_5
    :goto_2
    aget-object p0, v0, v1

    sget p2, Lcom/meishu/sdk/R$id;->ms_ad_container_class_recycler:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static b(Landroid/view/ViewGroup;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    check-cast v1, Landroid/view/ViewGroup;

    .line 15
    .line 16
    sget-object v2, Lcom/meishu/sdk/core/ad/recycler/d;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    :cond_2
    if-ge v4, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    check-cast v5, Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    move-object v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 48
    .line 49
    if-eqz v2, :cond_5

    .line 50
    .line 51
    check-cast v1, Landroid/view/ViewGroup;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    instance-of v3, v3, Landroid/view/ViewGroup;

    .line 62
    .line 63
    if-eqz v3, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v1, p0, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    return-void
.end method
