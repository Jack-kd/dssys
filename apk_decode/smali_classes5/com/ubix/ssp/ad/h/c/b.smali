.class public abstract Lcom/ubix/ssp/ad/h/c/b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field private h:I

.field protected i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected j:I

.field protected k:I

.field protected l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:D

.field private p:Z

.field protected q:Lcom/ubix/ssp/ad/g/k/e;

.field protected r:I

.field protected s:Z

.field protected t:I

.field protected u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->f:I

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->h:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->k:I

    const-string v1, ""

    iput-object v1, p0, Lcom/ubix/ssp/ad/h/c/b;->n:Ljava/lang/String;

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->r:I

    iput-boolean v0, p0, Lcom/ubix/ssp/ad/h/c/b;->s:Z

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->t:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/ubix/ssp/ad/h/c/b;->u:I

    const-string v2, "RENDER_MODE"

    invoke-virtual {p2, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ubix/ssp/ad/h/c/b;->r:I

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, p0, Lcom/ubix/ssp/ad/h/c/b;->o:D

    const-string v2, "TEMPLATE_ID"

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/ubix/ssp/ad/h/c/b;->m:I

    iget v2, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    int-to-float v2, v2

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ubix/ssp/ad/e/a0/r;->a(Landroid/content/Context;)F

    move-result p1

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    const-string p1, "AD_INDEX"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->k:I

    const-string p1, "AD_SOURCE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->n:Ljava/lang/String;

    const-string p1, "SIZE_MAP"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    const-string p1, "CLICK_MAP"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->l:Ljava/util/HashMap;

    const-string p1, "SUPPORT_FEED_BACK"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/b;->s:Z

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    const-string v2, "instlWidth"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    const-string v2, "instlHeight"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->b:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    const-string v2, "drawingWidth"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    const-string v2, "drawingHeight"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    const-string p1, "SKIP_VIEW_STYLE"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->t:I

    const-string p1, "SKIP_COUNT_TIME"

    invoke-virtual {p2, p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->u:I

    const-string p1, "VIDEO_RENDER_TYPE"

    invoke-virtual {p2, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "IS_DOWNLOAD"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/ubix/ssp/ad/h/c/b;->a(ZI)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)Lcom/ubix/ssp/ad/h/c/b;
    .locals 3

    .line 1
    const-string v0, "TEMPLATE_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "AD_HEIGHT"

    const-string v2, "AD_WIDTH"

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/ubix/ssp/ad/h/c/d;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/d;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/ubix/ssp/ad/h/c/f;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/f;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/ubix/ssp/ad/h/c/g;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/g;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/ubix/ssp/ad/h/c/g;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/g;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/ubix/ssp/ad/h/c/c;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/c;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_4
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/ubix/ssp/ad/h/c/e;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/e;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/ubix/ssp/ad/h/c/a;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/ubix/ssp/ad/h/c/a;

    invoke-direct {v0, p0, p1}, Lcom/ubix/ssp/ad/h/c/a;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x177c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ZI)V
    .locals 20

    .line 6
    move-object/from16 v1, p0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x61a85

    invoke-virtual {v5, v0}, Landroid/view/View;->setId(I)V

    new-instance v6, Lcom/ubix/ssp/ad/e/t/a/e;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/ubix/ssp/ad/e/t/a/e;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->r:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v0, v8, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v7, :cond_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    :goto_0
    const v0, 0x61a84

    invoke-virtual {v6, v0}, Landroid/view/View;->setId(I)V

    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->m:I

    const/16 v9, 0x177d

    const/16 v10, 0x177c

    const/4 v11, 0x0

    const/16 v12, 0x177e

    if-eq v0, v10, :cond_3

    if-eq v0, v9, :cond_3

    if-ne v0, v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v8}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v6, v11}, Lcom/ubix/ssp/ad/e/t/a/e;->setSupportRound(Z)V

    :goto_2
    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v14, 0x11

    const/16 v15, 0x48

    const/high16 v16, 0x40800000    # 4.0f

    const/high16 v13, -0x80000000

    const/16 v17, 0x0

    const/4 v11, 0x4

    const/4 v9, -0x1

    :try_start_0
    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->m:I

    const/16 v10, 0x1774

    if-eq v0, v10, :cond_5

    if-ne v0, v12, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_5
    :goto_3
    iget v0, v1, Lcom/ubix/ssp/ad/h/c/b;->t:I

    if-eq v0, v8, :cond_8

    if-eq v0, v7, :cond_7

    const/high16 v19, 0x41c00000    # 24.0f

    const/4 v10, 0x3

    if-eq v0, v10, :cond_6

    if-eq v0, v11, :cond_6

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static/range {v19 .. v19}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v8

    invoke-static/range {v19 .. v19}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    invoke-direct {v10, v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v8, v10

    goto :goto_6

    :cond_6
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13, v15}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v10}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v11}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_6

    :cond_7
    const/high16 v19, 0x41c00000    # 24.0f

    new-instance v0, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/ubix/ssp/ad/e/g;-><init>(Landroid/content/Context;)V

    invoke-static/range {v16 .. v16}, Lcom/ubix/ssp/ad/e/a0/r;->a(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v8}, Lcom/ubix/ssp/ad/e/g;->setTextSize(F)V

    invoke-virtual {v0, v9}, Lcom/ubix/ssp/ad/e/g;->setTextColor(I)V

    const-string v8, "\u8df3\u8fc7"

    invoke-virtual {v0, v8}, Lcom/ubix/ssp/ad/e/g;->setText(Ljava/lang/String;)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static/range {v19 .. v19}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v10

    invoke-static/range {v19 .. v19}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_8
    move-object/from16 v0, v17

    :goto_4
    move-object/from16 v8, v17

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :goto_6
    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v11, 0x61a89

    invoke-virtual {v10, v11}, Landroid/view/View;->setId(I)V

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    invoke-direct {v11, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0xd

    invoke-virtual {v11, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v13, 0x61a88

    invoke-virtual {v10, v13}, Landroid/view/View;->setId(I)V

    iget v13, v1, Lcom/ubix/ssp/ad/h/c/b;->m:I

    const/16 v15, 0x177c

    if-eq v13, v15, :cond_9

    const/16 v15, 0x177d

    if-eq v13, v15, :cond_9

    if-ne v13, v12, :cond_10

    :cond_9
    new-instance v13, Lcom/ubix/ssp/ad/e/b0/g;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    if-nez p2, :cond_b

    sget-object v18, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual/range {v18 .. v18}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result v18

    if-eqz v18, :cond_a

    move v14, v7

    goto :goto_7

    :cond_a
    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    move/from16 v14, p2

    :goto_7
    invoke-direct {v13, v15, v14}, Lcom/ubix/ssp/ad/e/b0/g;-><init>(Landroid/content/Context;I)V

    iget v14, v1, Lcom/ubix/ssp/ad/h/c/b;->m:I

    if-ne v14, v12, :cond_e

    if-nez p2, :cond_d

    sget-object v14, Lcom/ubix/ssp/ad/d/b;->a:Lcom/ubix/ssp/open/UBiXAdSetting;

    invoke-virtual {v14}, Lcom/ubix/ssp/open/UBiXAdSetting;->isUseTextureView()Z

    move-result v14

    if-eqz v14, :cond_c

    move v14, v7

    goto :goto_8

    :cond_c
    const/4 v14, 0x1

    goto :goto_8

    :cond_d
    move/from16 v14, p2

    :goto_8
    if-ne v14, v7, :cond_e

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_e
    const v7, 0x61a86

    invoke-virtual {v13, v7}, Landroid/view/View;->setId(I)V

    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v13, v7}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoImageDisplayType(I)V

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->m:I

    if-ne v7, v12, :cond_f

    iget v7, v1, Lcom/ubix/ssp/ad/h/c/b;->r:I

    const/4 v12, 0x1

    if-eq v7, v12, :cond_f

    invoke-virtual {v13, v12}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoImageDisplayType(I)V

    :cond_f
    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v10, v13, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    iget v11, v1, Lcom/ubix/ssp/ad/h/c/b;->a:I

    iget v12, v1, Lcom/ubix/ssp/ad/h/c/b;->b:I

    invoke-direct {v7, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_11

    const v5, 0x61a81

    invoke-virtual {v0, v5}, Landroid/view/View;->setId(I)V

    :cond_11
    const v5, 0x61a82

    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    const v5, 0x61a83

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    const v5, 0x61a87

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_12

    invoke-direct {v1}, Lcom/ubix/ssp/ad/h/c/b;->b()V

    :cond_12
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v0, :cond_14

    if-eqz v8, :cond_13

    invoke-virtual {v1, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_13
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_14
    :goto_9
    iget-object v0, v1, Lcom/ubix/ssp/ad/h/c/b;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v3, 0x66000000

    const/4 v4, 0x0

    move/from16 v5, v16

    invoke-virtual {v2, v5, v4, v0, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Lcom/ubix/ssp/ad/h/c/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iget-boolean v0, v1, Lcom/ubix/ssp/ad/h/c/b;->s:Z

    if-eqz v0, :cond_16

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lcom/ubix/ssp/ad/e/a0/r;->b(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x48

    const/high16 v5, -0x80000000

    invoke-static {v3, v5, v4}, Lcom/ubix/ssp/ad/e/a0/c;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v3, "\u53cd\u9988"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0xe0aed

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_16
    return-void
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ubix/ssp/ad/e/f;->a(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    const v0, 0x61a86

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/b0/g;->p()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const v0, 0x61a81

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ubix/ssp/ad/e/g;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/ubix/ssp/ad/e/g;

    invoke-virtual {v0}, Lcom/ubix/ssp/ad/e/g;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 3
    :try_start_0
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v0

    const v1, 0x61a84

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-interface {v0, p2, v1}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const v0, 0x61a86

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/a0/k;->f(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->c()Lcom/ubix/ssp/ad/e/v/f;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/ubix/ssp/ad/e/v/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move-object p1, v1

    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ubix/ssp/ad/e/b0/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/ubix/ssp/ad/h/c/b$a;

    invoke-direct {p1, p0, p2, v0}, Lcom/ubix/ssp/ad/h/c/b$a;-><init>(Lcom/ubix/ssp/ad/h/c/b;Ljava/lang/String;Lcom/ubix/ssp/ad/e/b0/g;)V

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/e;->setVideoViewListener(Lcom/ubix/ssp/ad/g/k/j;)V

    iget-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/b;->p:Z

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/h/c/b;->setMuted(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    .line 4
    move-wide/from16 v0, p7

    const p4, 0xe0a25

    invoke-virtual {p0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, ""

    if-lez v2, :cond_1

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/ubix/ssp/ad/e/a0/k;->a(D)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v0, v3

    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v7, v3

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e28\u5907\u6848\u53f7:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_1
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v8, v3

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e28\u9002\u7528\u5e74\u9f84:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    :goto_2
    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e28\u5e94\u7528\u5927\u5c0f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, v3

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "\u5e94\u7528\u540d\u79f0:%s\u4e28\u5e94\u7528\u7248\u672c:%s\u4e28\u5f00\u53d1\u8005:%s%s%s%s\u4e28\u6743\u9650\u4e28\u9690\u79c1\u4e28\u529f\u80fd\u4ecb\u7ecd"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ubix/ssp/ad/e/f;

    invoke-direct {p2, p1}, Lcom/ubix/ssp/ad/e/f;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->q:Lcom/ubix/ssp/ad/g/k/e;

    invoke-virtual {p2, p1}, Lcom/ubix/ssp/ad/e/f;->a(Lcom/ubix/ssp/ad/g/k/b;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->i:Ljava/util/HashMap;

    const-string v0, "instlWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->a:I

    const-string v0, "instlHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->b:I

    const-string v0, "drawingWidth"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->c:I

    const-string v0, "drawingHeight"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    return-void
.end method

.method public a(I)Z
    .locals 0

    .line 7
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 7

    .line 8
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AUTO_MUTE"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/ubix/ssp/ad/h/c/b;->p:Z

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x177d

    const/16 v4, 0x177e

    const-string v5, "IMAGE_URL"

    if-eq v1, v3, :cond_1

    const/16 v3, 0x177c

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ubix/ssp/ad/e/v/e;->b()Lcom/ubix/ssp/ad/e/v/a;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    const v6, 0x61a84

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-interface {v1, v3, v6}, Lcom/ubix/ssp/ad/e/v/a;->b(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    const-string v1, "VIDEO_URL"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {p0, v1, v3}, Lcom/ubix/ssp/ad/h/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v1, "IS_UNNAMED"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ubix/ssp/ad/h/c/b;->setAdLogo(Z)V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->c()V

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->m:I

    if-eq v1, v4, :cond_2

    const/16 v3, 0x1774

    if-ne v1, v3, :cond_3

    :cond_2
    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->r:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/ubix/ssp/ad/e/a0/c;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public c()V
    .locals 3

    const v0, 0x61a81

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "ubix/ic_close_gray.webp"

    invoke-static {v2}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public getAppInfoTop()I
    .locals 3

    const v0, 0xe0a25

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v1, v1, 0x2

    :goto_0
    sub-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v0

    const/16 v1, 0x1773

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->getRealTemplateId()I

    move-result v0

    const/16 v1, 0x177d

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const v0, 0x61a84

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_1
    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->j:I

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_2
    :goto_2
    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ubix/ssp/ad/e/a0/c;->e(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ubix/ssp/ad/h/c/b;->d:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public abstract getRealTemplateId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x61a81

    if-eq p1, v0, :cond_4

    const v0, 0x61a84

    if-eq p1, v0, :cond_2

    const v0, 0x61a87

    if-eq p1, v0, :cond_1

    const v0, 0xe0aed

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->q:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/ubix/ssp/ad/h/c/b;->k:I

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/g/k/b;->a(I)V

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/b;->p:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ubix/ssp/ad/h/c/b;->setMuted(Z)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->l:Ljava/util/HashMap;

    const-string v0, "__CLICK_TRIGGER__"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->q:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/ubix/ssp/ad/h/c/b;->k:I

    iget-object v1, p0, Lcom/ubix/ssp/ad/h/c/b;->l:Ljava/util/HashMap;

    invoke-interface {p1, v0, p0, v1}, Lcom/ubix/ssp/ad/g/k/b;->b(ILandroid/view/View;Ljava/util/HashMap;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->q:Lcom/ubix/ssp/ad/g/k/e;

    if-eqz p1, :cond_5

    iget v0, p0, Lcom/ubix/ssp/ad/h/c/b;->k:I

    invoke-interface {p1, v0}, Lcom/ubix/ssp/ad/g/k/b;->e(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->a()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/ubix/ssp/ad/h/c/b;->a()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ubix/ssp/ad/e/a0/r;->h(Landroid/content/Context;)I

    move-result p1

    invoke-static {}, Lcom/ubix/ssp/ad/e/a0/r;->a()Lcom/ubix/ssp/ad/e/a0/r;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ubix/ssp/ad/e/a0/r;->c(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget p1, p0, Lcom/ubix/ssp/ad/h/c/b;->a:I

    const/4 p2, 0x2

    div-int/2addr p1, p2

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/ubix/ssp/ad/h/c/b;->a:I

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->f:I

    :cond_0
    iget p1, p0, Lcom/ubix/ssp/ad/h/c/b;->g:I

    iget v0, p0, Lcom/ubix/ssp/ad/h/c/b;->f:I

    if-le p1, v0, :cond_1

    iput v0, p0, Lcom/ubix/ssp/ad/h/c/b;->g:I

    :cond_1
    iget p1, p0, Lcom/ubix/ssp/ad/h/c/b;->g:I

    iget v0, p0, Lcom/ubix/ssp/ad/h/c/b;->h:I

    mul-int/2addr v0, p2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ubix/ssp/ad/h/c/b;->e:I

    return-void
.end method

.method public setAdLogo(Z)V
    .locals 2

    const v0, 0x61a82

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "ubix/ic_logo.png"

    invoke-static {v1, p1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public setInnerListener(Lcom/ubix/ssp/ad/g/k/b;)V
    .locals 0

    check-cast p1, Lcom/ubix/ssp/ad/g/k/e;

    iput-object p1, p0, Lcom/ubix/ssp/ad/h/c/b;->q:Lcom/ubix/ssp/ad/g/k/e;

    return-void
.end method

.method public setMuted(Z)V
    .locals 2

    const v0, 0x61a87

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v1, "ubix/ic_volume_off.webp"

    goto :goto_0

    :cond_0
    const-string v1, "ubix/ic_volume_on.webp"

    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/ubix/ssp/ad/e/q;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    const v0, 0x61a86

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubix/ssp/ad/e/b0/g;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/ubix/ssp/ad/e/b0/e;->setMute(Z)V

    :cond_2
    iput-boolean p1, p0, Lcom/ubix/ssp/ad/h/c/b;->p:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method
