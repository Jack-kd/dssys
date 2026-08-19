.class public Lcom/octopus/ad/d;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/octopus/ad/internal/e/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/octopus/ad/d$a;
    }
.end annotation


# instance fields
.field private A:Lcom/octopus/ad/d$a;

.field private B:I

.field public a:Lcom/octopus/ad/internal/e/b;

.field protected b:Landroid/media/MediaPlayer;

.field protected c:Lcom/octopus/ad/c$b;

.field private final d:Lcom/octopus/ad/internal/e/a;

.field private final e:Lcom/octopus/ad/internal/b/f;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lcom/octopus/ad/internal/e/h;

.field private u:Lcom/octopus/ad/internal/video/VideoStateListener;

.field private v:Lcom/octopus/ad/b/a;

.field private w:Lcom/octopus/ad/b/a;

.field private x:Ljava/lang/String;

.field private y:Landroid/os/Handler;

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/octopus/ad/internal/e/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/octopus/ad/internal/e/b;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/octopus/ad/d;->g:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/octopus/ad/d;->h:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/octopus/ad/d;->i:Z

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/octopus/ad/d;->o:I

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/octopus/ad/d;->p:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/octopus/ad/d;->q:Z

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/octopus/ad/d;->r:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/octopus/ad/d;->s:Z

    .line 26
    .line 27
    sget-object v1, Lcom/octopus/ad/d$a;->a:Lcom/octopus/ad/d$a;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/octopus/ad/d;->A:Lcom/octopus/ad/d$a;

    .line 30
    .line 31
    sget-object v1, Lcom/octopus/ad/c$b;->d:Lcom/octopus/ad/c$b;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    .line 34
    .line 35
    iput v0, p0, Lcom/octopus/ad/d;->B:I

    .line 36
    .line 37
    iput-object p1, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/octopus/ad/internal/e/b;->a:Lcom/octopus/ad/internal/e/a;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/octopus/ad/internal/e/b;->b:Lcom/octopus/ad/internal/b/f;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/octopus/ad/d;->e:Lcom/octopus/ad/internal/b/f;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->N()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput-boolean p1, p0, Lcom/octopus/ad/d;->f:Z

    .line 54
    .line 55
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/e/a;->setAdVideoView(Lcom/octopus/ad/d;)V

    .line 58
    .line 59
    .line 60
    iget-boolean p1, p0, Lcom/octopus/ad/d;->f:Z

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getVideoStateListener()Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/octopus/ad/d;->u:Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/d;->o:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/d;Lcom/octopus/ad/d$a;)Lcom/octopus/ad/d$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/d;->A:Lcom/octopus/ad/d$a;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/b/f;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/octopus/ad/d;->e:Lcom/octopus/ad/internal/b/f;

    return-object p0
.end method

.method private a(II)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/octopus/ad/c$c;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/octopus/ad/c$c;-><init>(II)V

    .line 7
    new-instance v1, Lcom/octopus/ad/c$c;

    invoke-direct {v1, p1, p2}, Lcom/octopus/ad/c$c;-><init>(II)V

    .line 8
    new-instance p1, Lcom/octopus/ad/c;

    invoke-direct {p1, v0, v1}, Lcom/octopus/ad/c;-><init>(Lcom/octopus/ad/c$c;Lcom/octopus/ad/c$c;)V

    .line 9
    iget-object p2, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    invoke-virtual {p1, p2}, Lcom/octopus/ad/c;->a(Lcom/octopus/ad/c$b;)Landroid/graphics/Matrix;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lcom/octopus/ad/a/d;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    iget v1, v0, Lcom/octopus/ad/internal/e/a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/octopus/ad/internal/e/a;->i:I

    .line 97
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->getAdDispatcher()Lcom/octopus/ad/internal/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/octopus/ad/internal/b;->b()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/d;->e:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/a;->getOpensNativeBrowser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Z)V

    .line 101
    iget-object v0, p0, Lcom/octopus/ad/d;->e:Lcom/octopus/ad/internal/b/f;

    iget v1, p0, Lcom/octopus/ad/d;->B:I

    iget-object v2, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/e/a;->g()Z

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/octopus/ad/internal/b/f;->a(Landroid/view/View;IZLcom/octopus/ad/a/d;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/d;Lcom/octopus/ad/a/d;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/octopus/ad/d;->a(Lcom/octopus/ad/a/d;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 2

    .line 20
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 21
    :cond_0
    const-string v0, "SCALE"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "FIT_XY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "CENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "LEFT_BOTTOM_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "CENTER_INSIDE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "CENTER_TOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "CENTER_BOTTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "RIGHT_TOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "FIT_CENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "FIT_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "RIGHT_BOTTOM_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "START_INSIDE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "FIT_END"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "LEFT_CENTER_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "CENTER_TOP_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "CENTER_BOTTOM_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "CENTER_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "LEFT_CENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "LEFT_BOTTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_12
    const-string v0, "END_INSIDE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_13
    const-string v0, "LEFT_TOP_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_14
    const-string v0, "RIGHT_CENTER_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_15
    const-string v0, "LEFT_TOP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_16
    const-string v0, "RIGHT_CENTER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_17
    const-string v0, "RIGHT_BOTTOM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_18
    const-string v0, "RIGHT_TOP_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 24
    sget-object p1, Lcom/octopus/ad/c$b;->d:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 25
    :pswitch_0
    sget-object p1, Lcom/octopus/ad/c$b;->b:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 26
    :pswitch_1
    sget-object p1, Lcom/octopus/ad/c$b;->j:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 27
    :pswitch_2
    sget-object p1, Lcom/octopus/ad/c$b;->q:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 28
    :pswitch_3
    sget-object p1, Lcom/octopus/ad/c$b;->y:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 29
    :pswitch_4
    sget-object p1, Lcom/octopus/ad/c$b;->i:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 30
    :pswitch_5
    sget-object p1, Lcom/octopus/ad/c$b;->k:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 31
    :pswitch_6
    sget-object p1, Lcom/octopus/ad/c$b;->l:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 32
    :pswitch_7
    sget-object p1, Lcom/octopus/ad/c$b;->d:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 33
    :pswitch_8
    sget-object p1, Lcom/octopus/ad/c$b;->c:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 34
    :pswitch_9
    sget-object p1, Lcom/octopus/ad/c$b;->w:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 35
    :pswitch_a
    sget-object p1, Lcom/octopus/ad/c$b;->x:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 36
    :pswitch_b
    sget-object p1, Lcom/octopus/ad/c$b;->e:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 37
    :pswitch_c
    sget-object p1, Lcom/octopus/ad/c$b;->p:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 38
    :pswitch_d
    sget-object p1, Lcom/octopus/ad/c$b;->r:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 39
    :pswitch_e
    sget-object p1, Lcom/octopus/ad/c$b;->t:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 40
    :pswitch_f
    sget-object p1, Lcom/octopus/ad/c$b;->s:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 41
    :pswitch_10
    sget-object p1, Lcom/octopus/ad/c$b;->g:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 42
    :pswitch_11
    sget-object p1, Lcom/octopus/ad/c$b;->h:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 43
    :pswitch_12
    sget-object p1, Lcom/octopus/ad/c$b;->z:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 44
    :pswitch_13
    sget-object p1, Lcom/octopus/ad/c$b;->o:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 45
    :pswitch_14
    sget-object p1, Lcom/octopus/ad/c$b;->v:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 46
    :pswitch_15
    sget-object p1, Lcom/octopus/ad/c$b;->f:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 47
    :pswitch_16
    sget-object p1, Lcom/octopus/ad/c$b;->m:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 48
    :pswitch_17
    sget-object p1, Lcom/octopus/ad/c$b;->n:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    return-void

    .line 49
    :pswitch_18
    sget-object p1, Lcom/octopus/ad/c$b;->u:Lcom/octopus/ad/c$b;

    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    :cond_1b
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7cb5fdc3 -> :sswitch_18
        -0x73d13232 -> :sswitch_17
        -0x72ac0008 -> :sswitch_16
        -0x6ad94f03 -> :sswitch_15
        -0x61205989 -> :sswitch_14
        -0x43642f6e -> :sswitch_13
        -0x41170400 -> :sswitch_12
        -0x3d25d29d -> :sswitch_11
        -0x3c00a073 -> :sswitch_10
        -0x1a4767c6 -> :sswitch_f
        -0x1a29b8c6 -> :sswitch_e
        -0xb38dffc -> :sswitch_d
        -0xa4643fe -> :sswitch_c
        -0x7ae1493 -> :sswitch_b
        0x168b0699 -> :sswitch_a
        0x16ea0e61 -> :sswitch_9
        0x2c4cc674 -> :sswitch_8
        0x41310c63 -> :sswitch_7
        0x48a4e072 -> :sswitch_6
        0x5816b155 -> :sswitch_5
        0x6240024b -> :sswitch_4
        0x63f9e726 -> :sswitch_3
        0x6dc423ec -> :sswitch_2
        0x7645c055 -> :sswitch_1
        0x7b9f8e0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/octopus/ad/d;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/octopus/ad/d;->i:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    return-object p0
.end method

.method private b(II)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/octopus/ad/d;->q:Z

    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d;->f:Z

    return p0
.end method

.method public static synthetic d(Lcom/octopus/ad/d;)Lcom/octopus/ad/internal/video/VideoStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d;->u:Lcom/octopus/ad/internal/video/VideoStateListener;

    return-object p0
.end method

.method public static synthetic e(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/d;->r()V

    return-void
.end method

.method public static synthetic f(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d;->v:Lcom/octopus/ad/b/a;

    return-object p0
.end method

.method public static synthetic g(Lcom/octopus/ad/d;)Lcom/octopus/ad/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/d;->w:Lcom/octopus/ad/b/a;

    return-object p0
.end method

.method public static synthetic h(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/d;->q()V

    return-void
.end method

.method public static synthetic i(Lcom/octopus/ad/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/d;->t()V

    return-void
.end method

.method public static synthetic j(Lcom/octopus/ad/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/d;->o:I

    return p0
.end method

.method public static synthetic k(Lcom/octopus/ad/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/d;->q:Z

    return p0
.end method

.method private p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/media/MediaPlayer;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/d;->e()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->w:Lcom/octopus/ad/b/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/octopus/ad/b/a;

    .line 6
    .line 7
    const-wide/16 v1, 0x2710

    .line 8
    .line 9
    const-wide/16 v3, 0x32

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/octopus/ad/d;->w:Lcom/octopus/ad/b/a;

    .line 15
    .line 16
    new-instance v1, Lcom/octopus/ad/d$4;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/octopus/ad/d$4;-><init>(Lcom/octopus/ad/d;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/d;->w:Lcom/octopus/ad/b/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->a()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private r()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/d;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/octopus/ad/d;->h:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/a;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/octopus/ad/d;->v:Lcom/octopus/ad/b/a;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    iget v1, p0, Lcom/octopus/ad/d;->o:I

    .line 25
    .line 26
    if-gtz v1, :cond_0

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    iput v1, p0, Lcom/octopus/ad/d;->o:I

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/octopus/ad/d;->p:Z

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 35
    .line 36
    iget v1, p0, Lcom/octopus/ad/d;->o:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/octopus/ad/internal/e/b;->g()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/octopus/ad/internal/e/b;->h()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v0, v1, v2, v3}, Lcom/octopus/ad/internal/e/a;->a(III)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method private s()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/octopus/ad/d;->y:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v0, Lcom/octopus/ad/d$5;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/octopus/ad/d$5;-><init>(Lcom/octopus/ad/d;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/octopus/ad/d;->z:Ljava/lang/Runnable;

    .line 14
    .line 15
    new-instance v0, Lcom/octopus/ad/d$6;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/octopus/ad/d$6;-><init>(Lcom/octopus/ad/d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/octopus/ad/d;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .param p1    # Landroid/content/res/AssetFileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/octopus/ad/d;->a(Ljava/io/FileDescriptor;JJ)V

    .line 2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->y:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/octopus/ad/d;->z:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/d;->y:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/octopus/ad/d;->z:Ljava/lang/Runnable;

    .line 16
    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 14
    iget-object p1, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 15
    iget-object p1, p0, Lcom/octopus/ad/d;->u:Lcom/octopus/ad/internal/video/VideoStateListener;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoReady()V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/FileDescriptor;JJ)V
    .locals 6
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/octopus/ad/d;->p()V

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 8

    .line 50
    invoke-static {p1}, Lcom/octopus/ad/internal/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/octopus/ad/d;->i()V

    .line 52
    iget-object p1, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    if-eqz p1, :cond_a

    const v0, 0x13948

    .line 53
    invoke-virtual {p1, v0}, Lcom/octopus/ad/internal/e/a;->b(I)V

    return-void

    .line 54
    :cond_0
    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x13949

    if-nez v0, :cond_9

    const-string v0, ".jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->getCreativeHeight()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/d;->m:I

    .line 57
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->getCreativeWidth()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/d;->l:I

    .line 58
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->f()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/d;->k:I

    .line 59
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->e()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/d;->j:I

    .line 60
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->s()I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/d;->n:I

    .line 61
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    sget-object v0, Lcom/octopus/ad/c$b;->d:Lcom/octopus/ad/c$b;

    iput-object v0, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    .line 63
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 64
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/octopus/ad/d;->a(Ljava/util/HashMap;)V

    .line 65
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/octopus/ad/d;->r:Z

    .line 66
    :cond_4
    iput-object p1, p0, Lcom/octopus/ad/d;->x:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/octopus/ad/d;->p()V

    .line 68
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->g()F

    move-result p1

    .line 69
    iget-boolean v0, p0, Lcom/octopus/ad/d;->r:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 70
    invoke-virtual {p0, v3, v3}, Lcom/octopus/ad/d;->a(FF)V

    goto :goto_1

    :cond_5
    cmpl-float v0, p1, v3

    if-lez v0, :cond_6

    .line 71
    invoke-virtual {p0, p1, p1}, Lcom/octopus/ad/d;->a(FF)V

    goto :goto_1

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    .line 72
    invoke-virtual {p0, p1, p1}, Lcom/octopus/ad/d;->a(FF)V

    .line 73
    :goto_1
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->p()F

    move-result p1

    .line 74
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->q()F

    move-result v0

    .line 75
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeWidth()I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-ne v3, v2, :cond_7

    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeHeight()I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v2, -0x1

    move v3, v2

    goto :goto_2

    .line 76
    :cond_7
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 77
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v7, v3

    move v3, v2

    move v2, v7

    .line 78
    :goto_2
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeLeft()I

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeTop()I

    move-result v5

    if-nez v5, :cond_8

    .line 79
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x11

    invoke-direct {p1, v3, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 80
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 81
    :cond_8
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const v6, 0x800033

    invoke-direct {v5, v3, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 82
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeTop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    float-to-int v0, v2

    .line 83
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getCreativeLeft()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int p1, v2

    .line 84
    invoke-virtual {v5, p1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 85
    invoke-virtual {p0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    :goto_3
    new-instance p1, Lcom/octopus/ad/d$1;

    invoke-direct {p1, p0}, Lcom/octopus/ad/d$1;-><init>(Lcom/octopus/ad/d;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/d;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 87
    new-instance p1, Lcom/octopus/ad/d$2;

    invoke-direct {p1, p0}, Lcom/octopus/ad/d$2;-><init>(Lcom/octopus/ad/d;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/d;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 88
    new-instance p1, Lcom/octopus/ad/d$3;

    invoke-direct {p1, p0}, Lcom/octopus/ad/d$3;-><init>(Lcom/octopus/ad/d;)V

    invoke-virtual {p0, p1}, Lcom/octopus/ad/d;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void

    .line 89
    :catch_0
    invoke-virtual {p0}, Lcom/octopus/ad/d;->i()V

    .line 90
    iget-object p1, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    if-eqz p1, :cond_a

    .line 91
    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/e/a;->b(I)V

    goto :goto_5

    .line 92
    :cond_9
    :goto_4
    invoke-virtual {p0}, Lcom/octopus/ad/d;->i()V

    .line 93
    iget-object p1, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    if-eqz p1, :cond_a

    .line 94
    invoke-virtual {p1, v1}, Lcom/octopus/ad/internal/e/a;->b(I)V

    :cond_a
    :goto_5
    return-void
.end method

.method public a()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/octopus/ad/d;->e()V

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/d;->y:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iput-object v1, p0, Lcom/octopus/ad/d;->y:Landroid/os/Handler;

    .line 6
    :cond_0
    iput-object v1, p0, Lcom/octopus/ad/d;->z:Ljava/lang/Runnable;

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 8
    iput-object v1, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    return-void
.end method

.method public g()Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/d;->r:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/octopus/ad/d;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/octopus/ad/d;->a(FF)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0, v0}, Lcom/octopus/ad/d;->a(FF)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/octopus/ad/d;->r:Z

    return v0
.end method

.method public getAdWebView()Lcom/octopus/ad/internal/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCreativeHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/d;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreativeLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/d;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreativeTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/d;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getCreativeWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/d;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/d;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public h()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->b()Lcom/octopus/ad/internal/d/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/d/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/octopus/ad/d;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/d;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/octopus/ad/d;->setDataSource(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/octopus/ad/d;->s()V

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->a:Lcom/octopus/ad/internal/p;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/d;->e:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/a;->g()Z

    move-result v1

    new-instance v2, Lcom/octopus/ad/d$7;

    invoke-direct {v2, p0}, Lcom/octopus/ad/d$7;-><init>(Lcom/octopus/ad/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/b/f;->a(ZLcom/octopus/ad/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 11
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video play fail\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OctopusAd_Video"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    if-eqz v0, :cond_2

    const v1, 0x1394a

    .line 13
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->b(I)V

    :cond_2
    :goto_2
    return-void
.end method

.method public i()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->p()V

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/octopus/ad/d;->g:Z

    return-void
.end method

.method public j()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/d;->g:Z

    return v0
.end method

.method public k()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/octopus/ad/d;->d()V

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/d;->w:Lcom/octopus/ad/b/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->d()V

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    return-void
.end method

.method public l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/octopus/ad/d;->e:Lcom/octopus/ad/internal/b/f;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->T()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/octopus/ad/d;->s:Z

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/e/h;

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/octopus/ad/d;->s:Z

    .line 18
    .line 19
    new-instance v2, Lcom/octopus/ad/d$8;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/octopus/ad/d$8;-><init>(Lcom/octopus/ad/d;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2}, Lcom/octopus/ad/internal/e/h;-><init>(Landroid/view/View;ZLcom/octopus/ad/internal/e/h$a;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/octopus/ad/d;->t:Lcom/octopus/ad/internal/e/h;

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/octopus/ad/d;->f:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/e/a;->e(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/e/a;->d(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/octopus/ad/d;->r:Z

    .line 47
    .line 48
    invoke-virtual {v0, p0, v1}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/d;Z)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/e/a;->c(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/e/a;->f(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/b;->d()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 72
    .line 73
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget-object v1, Lcom/octopus/ad/internal/p;->c:Lcom/octopus/ad/internal/p;

    .line 78
    .line 79
    if-eq v0, v1, :cond_3

    .line 80
    .line 81
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 82
    .line 83
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Lcom/octopus/ad/internal/p;->d:Lcom/octopus/ad/internal/p;

    .line 88
    .line 89
    if-ne v0, v1, :cond_2

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 93
    .line 94
    invoke-interface {v0}, Lcom/octopus/ad/internal/a;->getMediaType()Lcom/octopus/ad/internal/p;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget-object v1, Lcom/octopus/ad/internal/p;->e:Lcom/octopus/ad/internal/p;

    .line 99
    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 103
    .line 104
    iget v1, p0, Lcom/octopus/ad/d;->o:I

    .line 105
    .line 106
    iget-object v2, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/octopus/ad/internal/e/b;->g()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    iget-object v3, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 113
    .line 114
    invoke-virtual {v3}, Lcom/octopus/ad/internal/e/b;->h()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    iget v4, p0, Lcom/octopus/ad/d;->o:I

    .line 119
    .line 120
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v0, v1, v2, v3}, Lcom/octopus/ad/internal/e/a;->a(III)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/octopus/ad/internal/e/b;->g()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    iget-object v2, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 137
    .line 138
    invoke-virtual {v2}, Lcom/octopus/ad/internal/e/b;->h()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v1, v2, p0}, Lcom/octopus/ad/internal/e/a;->a(IILandroid/view/View;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/e/a;->setAdWebView(Lcom/octopus/ad/internal/e/b;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 153
    .line 154
    invoke-virtual {v0, p0}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/d;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/d;->a:Lcom/octopus/ad/internal/e/b;

    .line 158
    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    iget-object v0, p0, Lcom/octopus/ad/d;->d:Lcom/octopus/ad/internal/e/a;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/octopus/ad/internal/e/a;->d()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-eqz v0, :cond_6

    .line 168
    .line 169
    invoke-direct {p0}, Lcom/octopus/ad/d;->q()V

    .line 170
    .line 171
    .line 172
    :cond_6
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/d;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/octopus/ad/d;->v:Lcom/octopus/ad/b/a;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->b()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/octopus/ad/d;->i:Z

    .line 14
    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    iget-object v0, p0, Lcom/octopus/ad/d;->A:Lcom/octopus/ad/d$a;

    .line 18
    .line 19
    sget-object v1, Lcom/octopus/ad/d$a;->b:Lcom/octopus/ad/d$a;

    .line 20
    .line 21
    if-ne v0, v1, :cond_4

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/octopus/ad/d;->b()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/octopus/ad/d;->v:Lcom/octopus/ad/b/a;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->b()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/d;->e:Lcom/octopus/ad/internal/b/f;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->ai()V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/d;->u:Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoPause()V

    .line 45
    .line 46
    .line 47
    :cond_3
    sget-object v0, Lcom/octopus/ad/d$a;->c:Lcom/octopus/ad/d$a;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/octopus/ad/d;->A:Lcom/octopus/ad/d$a;

    .line 50
    .line 51
    :cond_4
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/d;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/octopus/ad/d;->v:Lcom/octopus/ad/b/a;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->c()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/octopus/ad/d;->i:Z

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lcom/octopus/ad/d;->A:Lcom/octopus/ad/d$a;

    .line 18
    .line 19
    sget-object v1, Lcom/octopus/ad/d$a;->c:Lcom/octopus/ad/d$a;

    .line 20
    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/octopus/ad/d;->c()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/octopus/ad/d;->v:Lcom/octopus/ad/b/a;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->c()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/d;->u:Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoResume()V

    .line 38
    .line 39
    .line 40
    :cond_2
    sget-object v0, Lcom/octopus/ad/d$a;->b:Lcom/octopus/ad/d$a;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/octopus/ad/d;->A:Lcom/octopus/ad/d$a;

    .line 43
    .line 44
    :cond_3
    return-void
.end method

.method public o()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/d;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/octopus/ad/d;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/octopus/ad/d;->d()V

    .line 16
    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/d;->f()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    new-instance p2, Landroid/view/Surface;

    .line 2
    .line 3
    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/octopus/ad/d;->h()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->t:Lcom/octopus/ad/internal/e/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/octopus/ad/internal/e/h;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/d;->b(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/d;->b(II)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setAssetData(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/octopus/ad/d;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setCountDownTimer(Lcom/octopus/ad/b/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d;->v:Lcom/octopus/ad/b/a;

    .line 2
    .line 3
    return-void
.end method

.method public setCreativeLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/d;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public setCreativeTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/d;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/octopus/ad/d;->p()V

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/d;->p()V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/d;->b:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOpt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/d;->B:I

    .line 2
    .line 3
    return-void
.end method

.method public setRawData(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/octopus/ad/d;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/d;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public setScalableType(Lcom/octopus/ad/c$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d;->c:Lcom/octopus/ad/c$b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getVideoWidth()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0}, Lcom/octopus/ad/d;->getVideoHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/d;->a(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
