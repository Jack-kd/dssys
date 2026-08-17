.class public Lcom/octopus/ad/internal/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/octopus/ad/NativeAdResponse;


# instance fields
.field private A:Ljava/lang/Boolean;

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private final G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/octopus/ad/model/AdLogoInfo;

.field private M:Lcom/octopus/ad/model/AdLogoInfo;

.field private N:Lcom/octopus/ad/internal/b/f;

.field private O:Lcom/octopus/ad/internal/b/c;

.field private P:Landroid/content/Context;

.field private Q:Landroidx/appcompat/widget/AppCompatTextView;

.field private R:Lcom/octopus/ad/a/c$v;

.field private S:Lcom/octopus/ad/d/l;

.field private T:Landroid/view/View;

.field private U:Landroid/widget/VideoView;

.field private V:Landroid/view/TextureView;

.field private W:Landroid/widget/ImageView;

.field private X:Landroid/widget/LinearLayout;

.field private Y:Landroid/media/MediaPlayer;

.field private Z:Landroid/widget/ProgressBar;

.field private a:Lcom/octopus/ad/NativeAdResponse$b;

.field private aA:Lcom/octopus/ad/internal/y;

.field private aB:Lcom/octopus/ad/internal/g;

.field private aC:Lcom/octopus/ad/internal/h;

.field private aD:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/octopus/ad/internal/n;",
            ">;"
        }
    .end annotation
.end field

.field private aE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private aF:Lcom/octopus/ad/OnSensorListener;

.field private aG:Lcom/octopus/ad/listener/OnCpaListener;

.field private aH:Lcom/octopus/ad/b/a;

.field private aI:Lcom/octopus/ad/internal/k$a;

.field private aJ:Lcom/octopus/ad/a/c$b;

.field private aK:Lcom/octopus/ad/model/ComplianceInfo;

.field private aa:Landroid/os/Handler;

.field private ab:Ljava/lang/Runnable;

.field private ac:Lcom/octopus/ad/a/a;

.field private ad:Ljava/lang/String;

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private al:Z

.field private am:Z

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:Landroid/view/ViewGroup;

.field private ar:Landroid/view/View;

.field private as:Landroid/view/View;

.field private at:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private au:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

.field private aw:Lcom/octopus/ad/internal/video/VideoStateListener;

.field private ax:Landroid/view/View$OnClickListener;

.field private ay:Landroid/view/View$OnTouchListener;

.field private az:Landroid/view/View$OnClickListener;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:D

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->v:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/octopus/ad/internal/b/e;->y:I

    .line 10
    .line 11
    iput v0, p0, Lcom/octopus/ad/internal/b/e;->z:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->B:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->C:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->F:Z

    .line 18
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->G:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->H:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->I:Ljava/util/ArrayList;

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->J:Ljava/util/ArrayList;

    .line 46
    .line 47
    new-instance v1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->K:Ljava/util/ArrayList;

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/octopus/ad/internal/b/e;->ak:Z

    .line 56
    .line 57
    iput-boolean v1, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    .line 58
    .line 59
    iput v0, p0, Lcom/octopus/ad/internal/b/e;->ao:I

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic A(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/OnSensorListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->aF:Lcom/octopus/ad/OnSensorListener;

    return-object p0
.end method

.method private A()V
    .locals 1

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/b/e$20;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/e$20;-><init>(Lcom/octopus/ad/internal/b/e;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->ax:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic B(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/a/c$v;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    return-object p0
.end method

.method private B()V
    .locals 4

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/e/h;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/octopus/ad/internal/b/e;->B:Z

    new-instance v3, Lcom/octopus/ad/internal/b/e$21;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/b/e$21;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/octopus/ad/internal/e/h;-><init>(Landroid/view/View;ZLcom/octopus/ad/internal/e/h$a;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->ay:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static synthetic C(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->W:Landroid/widget/ImageView;

    return-object p0
.end method

.method private C()V
    .locals 1

    .line 2
    new-instance v0, Lcom/octopus/ad/internal/b/e$22;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/e$22;-><init>(Lcom/octopus/ad/internal/b/e;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->az:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic D(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->O:Lcom/octopus/ad/internal/b/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic E(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic F(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic G(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->as:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic H(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/a/d;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->v()Lcom/octopus/ad/a/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic J(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->t:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic K(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/k$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->aI:Lcom/octopus/ad/internal/k$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic L(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->C:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic N(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->ai:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/b/e;->an:I

    return p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;)Landroid/view/ViewGroup;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Landroidx/appcompat/widget/AppCompatTextView;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/a/c$v;)Lcom/octopus/ad/a/c$v;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/octopus/ad/internal/b/e;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    const-string v0, "ImpressionTrackers"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/octopus/ad/internal/b/e;

    invoke-direct {v1}, Lcom/octopus/ad/internal/b/e;-><init>()V

    if-eqz v0, :cond_1

    .line 23
    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->J:Ljava/util/ArrayList;

    .line 24
    :cond_1
    const-string v0, "Headline"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->b:Ljava/lang/String;

    .line 25
    const-string v0, "Body"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->c:Ljava/lang/String;

    .line 26
    const-string v0, "Image"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->d:Ljava/lang/String;

    .line 27
    const-string v0, "Cover"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->i:Ljava/lang/String;

    .line 28
    const-string v0, "LayoutType"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/octopus/ad/internal/b/e;->y:I

    .line 29
    const-string v0, "IsShowClose"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->g(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/octopus/ad/internal/b/e;->u:Z

    .line 30
    const-string v0, "Images"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 31
    const-string v2, "Videos"

    invoke-static {p0, v2}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 32
    const-string v3, "Texts"

    invoke-static {p0, v3}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move v5, v4

    .line 33
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 34
    iget-object v6, v1, Lcom/octopus/ad/internal/b/e;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move v0, v4

    .line 35
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 36
    iget-object v5, v1, Lcom/octopus/ad/internal/b/e;->H:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 37
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_4

    .line 38
    iget-object v0, v1, Lcom/octopus/ad/internal/b/e;->I:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 39
    :cond_4
    const-string v0, "AppIcon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Action"

    if-eqz v2, :cond_5

    .line 40
    sget-object v2, Lcom/octopus/ad/NativeAdResponse$b;->b:Lcom/octopus/ad/NativeAdResponse$b;

    iput-object v2, v1, Lcom/octopus/ad/internal/b/e;->a:Lcom/octopus/ad/NativeAdResponse$b;

    .line 41
    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->e:Ljava/lang/String;

    .line 42
    invoke-static {p0, v3}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->j:Ljava/lang/String;

    .line 43
    const-string v0, "Star"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->f(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/octopus/ad/internal/b/e;->k:D

    .line 44
    const-string v0, "Store"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->l:Ljava/lang/String;

    .line 45
    const-string v0, "Price"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->d(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/octopus/ad/internal/b/e;->m:I

    goto :goto_3

    .line 46
    :cond_5
    sget-object v0, Lcom/octopus/ad/NativeAdResponse$b;->a:Lcom/octopus/ad/NativeAdResponse$b;

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->a:Lcom/octopus/ad/NativeAdResponse$b;

    .line 47
    const-string v0, "Logo"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->e:Ljava/lang/String;

    .line 48
    invoke-static {p0, v3}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->j:Ljava/lang/String;

    .line 49
    const-string v0, "Advertiser"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->D:Ljava/lang/String;

    .line 50
    :goto_3
    const-string v0, "ClickTrackers"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 52
    iput-object v0, v1, Lcom/octopus/ad/internal/b/e;->K:Ljava/util/ArrayList;

    .line 53
    :cond_6
    const-string v0, "Custom"

    invoke-static {p0, v0}, Lcom/octopus/ad/internal/c/k;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/octopus/ad/internal/c/k;->a(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object p0

    iput-object p0, v1, Lcom/octopus/ad/internal/b/e;->E:Ljava/util/HashMap;

    return-object v1
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->ab:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(F)V
    .locals 13

    .line 70
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 71
    :cond_0
    sget v1, Lcom/octopus/ad/R$id;->fl_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/FrameLayout;

    .line 72
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_feedback:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_compliance:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/FrameLayout;

    .line 75
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_logo_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_video:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    .line 81
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_texture:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    .line 82
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v1, Lcom/octopus/ad/R$id;->ad_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->Z:Landroid/widget/ProgressBar;

    .line 83
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "octlogo.png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    sget v0, Lcom/octopus/ad/R$drawable;->oct_logo:I

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getTextLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getTextLogoUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "remdad.png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    sget v0, Lcom/octopus/ad/R$drawable;->oct_logo_text:I

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 92
    :cond_4
    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getTextLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/utilities/ImageManager;->load(Ljava/lang/String;)Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/octopus/ad/internal/utilities/ImageManager$RequestCreatorRunnble;->into(Landroid/widget/ImageView;)V

    .line 93
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    .line 94
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->u:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 95
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->au:Ljava/util/List;

    .line 97
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    .line 98
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    :goto_2
    iget v0, p0, Lcom/octopus/ad/internal/b/e;->an:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->am:Z

    .line 101
    :cond_6
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->am:Z

    if-eqz v0, :cond_7

    .line 102
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/b/e$1;

    invoke-direct {v1, p0, p1}, Lcom/octopus/ad/internal/b/e$1;-><init>(Lcom/octopus/ad/internal/b/e;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 103
    :cond_7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    new-instance v1, Lcom/octopus/ad/internal/b/e$12;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v12}, Lcom/octopus/ad/internal/b/e$12;-><init>(Lcom/octopus/ad/internal/b/e;FLandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method private a(IF)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    const v1, 0x138e5

    if-eqz v0, :cond_2

    .line 56
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    .line 57
    iget v0, p0, Lcom/octopus/ad/internal/b/e;->an:I

    if-lez v0, :cond_0

    .line 58
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget v0, p0, Lcom/octopus/ad/internal/b/e;->an:I

    int-to-float v2, v0

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-direct {p1, v0, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 59
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    :goto_0
    invoke-direct {p0, p2}, Lcom/octopus/ad/internal/b/e;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 62
    :goto_1
    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz p2, :cond_1

    .line 63
    invoke-interface {p2, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 64
    :cond_1
    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz p2, :cond_4

    .line 65
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz p1, :cond_3

    .line 67
    invoke-interface {p1, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 68
    :cond_3
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz p1, :cond_4

    .line 69
    const-string p2, "AdContainer is null"

    invoke-virtual {p1, p2}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->K()Lcom/octopus/ad/a/c$p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$p;->b()Lcom/octopus/ad/a/c$s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$s;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/octopus/ad/internal/b/e;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    sget v1, Lcom/octopus/ad/R$id;->regionClickView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/octopus/ad/widget/RegionClickView;

    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    const-string p2, "\u70b9\u51fb\u8df3\u8f6c\u81f3\u7b2c\u4e09\u65b9\u5e94\u7528\u6216\u8be6\u60c5\u9875"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 113
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Lcom/octopus/ad/widget/RegionClickView;->setTitle(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 114
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    .line 118
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An Exception Caught: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OctopusAd"

    invoke-static {p2, p1}, Lcom/octopus/ad/d/b/f;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 123
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$v;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 124
    iget v0, p0, Lcom/octopus/ad/internal/b/e;->y:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    const/high16 v1, 0x41200000    # 10.0f

    .line 125
    invoke-virtual {p0, p1, v0, v1}, Lcom/octopus/ad/internal/b/e;->addShakeView(Landroid/view/ViewGroup;IF)V

    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x82

    const/high16 v1, 0x41500000    # 13.0f

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/octopus/ad/internal/b/e;->addShakeView(Landroid/view/ViewGroup;IF)V

    :cond_2
    return-void
.end method

.method private a(Landroid/view/ViewGroup;IF)V
    .locals 7

    .line 134
    const-string v0, ""

    const-string v1, "50%"

    if-eqz p1, :cond_8

    :try_start_0
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 135
    :cond_0
    invoke-virtual {v2}, Lcom/octopus/ad/a/c$v;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    invoke-virtual {v2}, Lcom/octopus/ad/a/c$v;->h()I

    move-result v2

    if-nez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    const-string v3, "\u6447\u52a8\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    invoke-virtual {v2, v3}, Lcom/octopus/ad/a/c$v;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    const-string v3, "\u8f6c\u52a8\u6216\u70b9\u51fb\u4e86\u89e3\u66f4\u591a"

    invoke-virtual {v2, v3}, Lcom/octopus/ad/a/c$v;->a(Ljava/lang/String;)V

    .line 139
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    if-nez v2, :cond_3

    .line 140
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/e;->b(Landroid/view/ViewGroup;)V

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v1, v1, v3, p2}, Lcom/octopus/ad/d/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz p2, :cond_4

    .line 143
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    invoke-virtual {p2}, Lcom/octopus/ad/a/c$v;->e()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v5

    iget-boolean v6, p0, Lcom/octopus/ad/internal/b/e;->ak:Z

    move-object v2, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/octopus/ad/d/l;->a(Landroid/view/View;Landroid/view/View;FLjava/lang/String;Lcom/octopus/ad/internal/p;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    goto :goto_1

    :cond_4
    move-object v2, p1

    .line 144
    :goto_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 145
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->b()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    const/4 p1, 0x7

    .line 146
    iput p1, p0, Lcom/octopus/ad/internal/b/e;->z:I

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->g()I

    move-result p1

    if-ne p1, p2, :cond_6

    .line 148
    invoke-direct {p0, v2}, Lcom/octopus/ad/internal/b/e;->c(Landroid/view/ViewGroup;)V

    .line 149
    :cond_6
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    invoke-virtual {p1}, Lcom/octopus/ad/a/c$v;->i()I

    move-result p1

    if-ne p1, p2, :cond_7

    .line 150
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->ax:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->ay:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 152
    :cond_7
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 153
    :goto_2
    const-string p2, "OctopusAd"

    const-string p3, "An Exception Caught"

    invoke-static {p2, p3, p1}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private a(Landroid/widget/FrameLayout;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 121
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/octopus/ad/a/d;)V
    .locals 11

    .line 154
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ae:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/octopus/ad/d/l;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->q:Z

    .line 157
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->x()V

    .line 158
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->O:Lcom/octopus/ad/internal/b/c;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/c;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    move v8, v0

    goto :goto_0

    :cond_1
    move v8, v1

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v2, :cond_3

    if-eqz v8, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/octopus/ad/internal/b/e;->A:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/octopus/ad/internal/b/e;->r:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/octopus/ad/internal/b/e;->B:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/octopus/ad/internal/b/e;->C:Z

    if-nez v3, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    if-eqz v1, :cond_4

    .line 160
    invoke-interface {v2}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdClick()V

    .line 161
    :cond_4
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    .line 162
    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->aG:Lcom/octopus/ad/listener/OnCpaListener;

    invoke-virtual {v2, v3}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/listener/OnCpaListener;)V

    .line 163
    :cond_5
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2, v1}, Lcom/octopus/ad/internal/b/f;->b(Z)V

    .line 164
    iget v1, p0, Lcom/octopus/ad/internal/b/e;->ao:I

    add-int/lit8 v10, v1, 0x1

    iput v10, p0, Lcom/octopus/ad/internal/b/e;->ao:I

    .line 165
    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    iget-object v4, p0, Lcom/octopus/ad/internal/b/e;->P:Landroid/content/Context;

    iget v5, p0, Lcom/octopus/ad/internal/b/e;->z:I

    iget-boolean v6, p0, Lcom/octopus/ad/internal/b/e;->o:Z

    iget-boolean v7, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    move-object v9, p1

    invoke-virtual/range {v3 .. v10}, Lcom/octopus/ad/internal/b/f;->a(Landroid/content/Context;IZZZLcom/octopus/ad/a/d;I)V

    .line 166
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/octopus/ad/d/l;->a:J

    return-void

    .line 167
    :cond_7
    iput-boolean v1, p0, Lcom/octopus/ad/internal/b/e;->r:Z

    .line 168
    iput v1, p0, Lcom/octopus/ad/internal/b/e;->z:I

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Landroid/view/View;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Landroid/view/ViewGroup;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/e;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Landroid/view/ViewGroup;IF)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/octopus/ad/internal/b/e;->a(Landroid/view/ViewGroup;IF)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/e;->a(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/a/d;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/a/d;)V

    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Ljava/util/ArrayList;F)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/octopus/ad/internal/b/e;->a(Ljava/util/ArrayList;F)V

    return-void
.end method

.method private a(Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V
    .locals 17

    move-object/from16 v0, p0

    .line 169
    iget-boolean v1, v0, Lcom/octopus/ad/internal/b/e;->F:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 170
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->aA:Lcom/octopus/ad/internal/y;

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v1}, Lcom/octopus/ad/internal/y;->d()V

    .line 172
    :cond_0
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    const v2, 0x35164fe

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 173
    instance-of v3, v1, Lcom/octopus/ad/internal/y;

    if-eqz v3, :cond_1

    .line 174
    check-cast v1, Lcom/octopus/ad/internal/y;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/y;->d()V

    .line 175
    :cond_1
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/octopus/ad/internal/y;->a(Landroid/view/View;)Lcom/octopus/ad/internal/y;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/b/e;->aA:Lcom/octopus/ad/internal/y;

    .line 176
    iget-object v3, v0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 177
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->aA:Lcom/octopus/ad/internal/y;

    if-nez v1, :cond_2

    goto/16 :goto_5

    .line 178
    :cond_2
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->O:Lcom/octopus/ad/internal/b/c;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    .line 179
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/octopus/ad/internal/h;->a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/h;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/b/e;->aC:Lcom/octopus/ad/internal/h;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/octopus/ad/internal/b/e;->aD:Ljava/util/ArrayList;

    .line 181
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :cond_3
    :goto_0
    if-ge v6, v4, :cond_b

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    .line 182
    const-string v8, "?rv=1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 183
    invoke-static {v7, v5}, Lcom/octopus/ad/internal/utilities/ViewUtil;->openLocalBrowser(Ljava/lang/String;I)V

    move-object/from16 v9, p1

    goto :goto_0

    .line 184
    :cond_4
    const-string v8, "track=oct"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 185
    iget-object v8, v0, Lcom/octopus/ad/internal/b/e;->O:Lcom/octopus/ad/internal/b/c;

    invoke-virtual {v8}, Lcom/octopus/ad/internal/b/c;->h()Z

    move-result v8

    if-nez v8, :cond_6

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&opt=4"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_5
    :goto_1
    move-object v13, v7

    goto :goto_2

    .line 187
    :cond_6
    iget-object v8, v0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/octopus/ad/internal/b/f;->R()Z

    move-result v8

    if-nez v8, :cond_5

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&opt=11"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 189
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 190
    iget-object v9, v0, Lcom/octopus/ad/internal/b/e;->O:Lcom/octopus/ad/internal/b/c;

    invoke-virtual {v9}, Lcom/octopus/ad/internal/b/c;->j()Lcom/octopus/ad/internal/d;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 191
    invoke-virtual {v9}, Lcom/octopus/ad/internal/d;->h()J

    move-result-wide v7

    :cond_7
    move-wide v11, v7

    .line 192
    iget-object v7, v0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v7, :cond_8

    .line 193
    invoke-virtual {v7}, Lcom/octopus/ad/internal/b/f;->ao()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v16, v7

    goto :goto_3

    :cond_8
    move-object/from16 v16, v3

    .line 194
    :goto_3
    iget-object v7, v0, Lcom/octopus/ad/internal/b/e;->O:Lcom/octopus/ad/internal/b/c;

    invoke-virtual {v7}, Lcom/octopus/ad/internal/b/c;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/e;->f()Ljava/lang/String;

    move-result-object v10

    iget-object v14, v0, Lcom/octopus/ad/internal/b/e;->aA:Lcom/octopus/ad/internal/y;

    iget-object v7, v0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    .line 195
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 196
    const-string v8, "imp"

    invoke-static/range {v8 .. v16}, Lcom/octopus/ad/internal/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/octopus/ad/internal/y;Landroid/content/Context;Ljava/util/ArrayList;)Lcom/octopus/ad/internal/n;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 197
    const-string v8, "track=octimp"

    invoke-virtual {v13, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 198
    new-instance v8, Lcom/octopus/ad/internal/b/e$9;

    move-object/from16 v9, p1

    invoke-direct {v8, v0, v9}, Lcom/octopus/ad/internal/b/e$9;-><init>(Lcom/octopus/ad/internal/b/e;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    invoke-virtual {v7, v8}, Lcom/octopus/ad/internal/n;->a(Lcom/octopus/ad/internal/c/d$a;)V

    goto :goto_4

    :cond_9
    move-object/from16 v9, p1

    :goto_4
    if-eqz v7, :cond_3

    .line 199
    iget-object v8, v0, Lcom/octopus/ad/internal/b/e;->aD:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 200
    :cond_a
    iput-boolean v2, v0, Lcom/octopus/ad/internal/b/e;->ae:Z

    .line 201
    :cond_b
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/octopus/ad/internal/b/e;->as:Landroid/view/View;

    .line 202
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v1, :cond_c

    iget-boolean v3, v0, Lcom/octopus/ad/internal/b/e;->w:Z

    if-nez v3, :cond_c

    .line 203
    iput-boolean v2, v0, Lcom/octopus/ad/internal/b/e;->w:Z

    .line 204
    new-instance v2, Lcom/octopus/ad/internal/b/e$10;

    invoke-direct {v2, v0}, Lcom/octopus/ad/internal/b/e$10;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-static {v1, v2}, Lcom/octopus/ad/internal/e/a;->a(Lcom/octopus/ad/internal/b/f;Lcom/octopus/ad/internal/e/a$c;)V

    .line 205
    iget-object v1, v0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/f;->S()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/octopus/ad/internal/b/e;->A:Ljava/lang/Boolean;

    :cond_c
    :goto_5
    return-void
.end method

.method private a(Ljava/util/ArrayList;F)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;F)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 127
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 130
    check-cast v3, Landroid/widget/TextView;

    .line 131
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    mul-float/2addr v4, p2

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 132
    :cond_1
    new-instance v4, Lcom/octopus/ad/internal/b/e$24;

    invoke-direct {v4, p0, v3, p2}, Lcom/octopus/ad/internal/b/e$24;-><init>(Lcom/octopus/ad/internal/b/e;Landroid/view/View;F)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic a(Lcom/octopus/ad/internal/b/e;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->v:Z

    return p1
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/b/e;->an:I

    return p0
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/e;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/octopus/ad/internal/b/e;->ap:I

    return p1
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->W:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->W:Landroid/widget/ImageView;

    .line 15
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ImageManager;->with(Landroid/content/Context;)Lcom/octopus/ad/internal/utilities/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/octopus/ad/internal/b/e$8;

    invoke-direct {v2, p0, p1}, Lcom/octopus/ad/internal/b/e$8;-><init>(Lcom/octopus/ad/internal/b/e;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/octopus/ad/internal/utilities/ImageManager;->getBitmap(Ljava/lang/String;Lcom/octopus/ad/internal/utilities/ImageManager$BitmapLoadedListener;)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->W:Landroid/widget/ImageView;

    return-object p1
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/octopus/ad/d/l;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/octopus/ad/d/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    .line 8
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    invoke-virtual {v0, v1}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/a/c$v;)V

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    invoke-virtual {v0, p1}, Lcom/octopus/ad/d/l;->a(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    new-instance v0, Lcom/octopus/ad/internal/b/e$6;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/e$6;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-virtual {p1, v0}, Lcom/octopus/ad/d/l;->a(Lcom/octopus/ad/d/l$a;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    invoke-virtual {p1}, Lcom/octopus/ad/d/l;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/octopus/ad/internal/b/e;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->aj:Z

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/b/e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/b/e;->z:I

    return p1
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/b/e;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    return-object p0
.end method

.method private c(Landroid/view/ViewGroup;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->removeChildFromParent(Landroid/view/View;)V

    .line 20
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 23
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->T:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/octopus/ad/internal/b/e;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    return p1
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/b/e;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->Z:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method public static synthetic d(Lcom/octopus/ad/internal/b/e;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/e;->g(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/model/ComplianceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->aK:Lcom/octopus/ad/model/ComplianceInfo;

    return-object p0
.end method

.method public static synthetic e(Lcom/octopus/ad/internal/b/e;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->r:Z

    return p1
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/b/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/b/e;->y:I

    return p0
.end method

.method public static synthetic f(Lcom/octopus/ad/internal/b/e;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->t:Z

    return p1
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/b/e;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->Q:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method private g(Z)V
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ae:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ae:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->R()Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onADExposed()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v0, v1, p1}, Lcom/octopus/ad/internal/b/f;->a(Lcom/octopus/ad/a/a;Z)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    iget-object p1, p1, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static synthetic g(Lcom/octopus/ad/internal/b/e;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->C:Z

    return p1
.end method

.method public static synthetic h(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->af:Z

    return p0
.end method

.method public static synthetic i(Lcom/octopus/ad/internal/b/e;)Landroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    return-object p0
.end method

.method private j()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->u()V

    .line 4
    iget v0, p0, Lcom/octopus/ad/internal/b/e;->y:I

    const/4 v1, 0x1

    const v2, 0x3fb33333    # 1.4f

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    const v2, 0x4097ae14    # 4.74f

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 5
    sget v0, Lcom/octopus/ad/R$layout;->oct_native_one_img:I

    const v1, 0x3fe3d70a    # 1.78f

    invoke-direct {p0, v0, v1}, Lcom/octopus/ad/internal/b/e;->a(IF)V

    return-void

    .line 6
    :cond_0
    sget v0, Lcom/octopus/ad/R$layout;->oct_native_text_left_img:I

    invoke-direct {p0, v0, v2}, Lcom/octopus/ad/internal/b/e;->a(IF)V

    return-void

    .line 7
    :cond_1
    sget v0, Lcom/octopus/ad/R$layout;->oct_native_text_right_img:I

    invoke-direct {p0, v0, v2}, Lcom/octopus/ad/internal/b/e;->a(IF)V

    return-void

    .line 8
    :cond_2
    sget v0, Lcom/octopus/ad/R$layout;->oct_native_text_below_img:I

    invoke-direct {p0, v0, v2}, Lcom/octopus/ad/internal/b/e;->a(IF)V

    return-void

    .line 9
    :cond_3
    sget v0, Lcom/octopus/ad/R$layout;->oct_native_text_above_img:I

    invoke-direct {p0, v0, v2}, Lcom/octopus/ad/internal/b/e;->a(IF)V

    return-void

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v0, :cond_5

    const v1, 0x138e5

    .line 11
    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_6

    .line 13
    const-string v1, "AdContainer is null"

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static synthetic j(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->q()V

    return-void
.end method

.method public static synthetic k(Lcom/octopus/ad/internal/b/e;)Landroid/widget/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    return-object p0
.end method

.method private k()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->e()V

    .line 4
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->u()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v0, :cond_1

    const v1, 0x138e5

    .line 6
    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_2

    .line 8
    const-string v1, "AdContainer is null"

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private l()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->u()V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/octopus/ad/R$layout;->oct_layout_draw:I

    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/octopus/ad/internal/b/e;->an:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/b/e;->a(F)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v0, :cond_1

    const v1, 0x138e5

    .line 8
    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_2

    .line 10
    const-string v1, "AdContainer is null"

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static synthetic l(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->p()V

    return-void
.end method

.method public static synthetic m(Lcom/octopus/ad/internal/b/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->P:Landroid/content/Context;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->u()V

    .line 4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/octopus/ad/R$layout;->oct_layout_banner_video:I

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/octopus/ad/R$layout;->oct_layout_banner:I

    :goto_0
    const v1, 0x40cccccd    # 6.4f

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/octopus/ad/internal/b/e;->a(IF)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v0, :cond_2

    const v1, 0x138e5

    .line 9
    invoke-interface {v0, v1}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_3

    .line 11
    const-string v1, "AdContainer is null"

    invoke-virtual {v0, v1}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private n()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->K()Lcom/octopus/ad/a/c$p;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$p;->a()Lcom/octopus/ad/a/c$n;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v1

    sget-object v2, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$n;->a()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ax:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ay:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$n;->a()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ax:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ay:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic n(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->w()V

    return-void
.end method

.method public static synthetic o(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/nativead/NativeAdEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/octopus/ad/internal/b/e$23;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$23;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/b/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    return-object p0
.end method

.method private p()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcom/octopus/ad/internal/b/e$25;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/e$25;-><init>(Lcom/octopus/ad/internal/b/e;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->ab:Ljava/lang/Runnable;

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    new-instance v1, Lcom/octopus/ad/internal/b/e$26;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$26;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    new-instance v1, Lcom/octopus/ad/internal/b/e$27;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$27;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    new-instance v1, Lcom/octopus/ad/internal/b/e$28;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$28;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/octopus/ad/internal/b/e$29;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$29;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 9
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->c()V

    return-void
.end method

.method public static synthetic q(Lcom/octopus/ad/internal/b/e;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/octopus/ad/internal/b/e$2;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$2;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/octopus/ad/internal/b/e$3;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/e$3;-><init>(Lcom/octopus/ad/internal/b/e;)V

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->ab:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic r(Lcom/octopus/ad/internal/b/e;)Lcom/octopus/ad/internal/video/VideoStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->aw:Lcom/octopus/ad/internal/video/VideoStateListener;

    return-object p0
.end method

.method private r()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aB:Lcom/octopus/ad/internal/g;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    new-instance v1, Lcom/octopus/ad/internal/b/e$4;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$4;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-static {v0, v1}, Lcom/octopus/ad/internal/g;->a(Landroid/view/View;Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)Lcom/octopus/ad/internal/g;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->aB:Lcom/octopus/ad/internal/g;

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lcom/octopus/ad/c$c;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/octopus/ad/c$c;-><init>(II)V

    .line 4
    new-instance v0, Lcom/octopus/ad/c$c;

    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/octopus/ad/c$c;-><init>(II)V

    .line 5
    new-instance v2, Lcom/octopus/ad/c;

    invoke-direct {v2, v1, v0}, Lcom/octopus/ad/c;-><init>(Lcom/octopus/ad/c$c;Lcom/octopus/ad/c$c;)V

    .line 6
    sget-object v0, Lcom/octopus/ad/c$b;->d:Lcom/octopus/ad/c$b;

    invoke-virtual {v2, v0}, Lcom/octopus/ad/c;->a(Lcom/octopus/ad/c$b;)Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic s(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->t()V

    return-void
.end method

.method public static synthetic t(Lcom/octopus/ad/internal/b/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/octopus/ad/internal/b/e;->ap:I

    return p0
.end method

.method private t()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ab:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ab:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->K()Lcom/octopus/ad/a/c$p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$p;->c()Lcom/octopus/ad/a/c$v;

    move-result-object v0

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->R:Lcom/octopus/ad/a/c$v;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$v;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/b/e;->b(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public static synthetic u(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->aj:Z

    return p0
.end method

.method private v()Lcom/octopus/ad/a/d;
    .locals 10

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    const v1, 0x3fb33333    # 1.4f

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->o:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-eqz v0, :cond_2

    if-nez v2, :cond_6

    .line 6
    :cond_2
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v2, v0

    :goto_1
    div-float/2addr v2, v1

    float-to-int v2, v2

    goto :goto_3

    .line 7
    :cond_3
    :goto_2
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v2, v0

    div-float v1, v2, v1

    float-to-int v1, v1

    .line 8
    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v3, :cond_5

    .line 9
    invoke-virtual {v3}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v3

    sget-object v4, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    if-ne v3, v4, :cond_4

    .line 10
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    goto :goto_3

    .line 11
    :cond_4
    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v3}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v3

    sget-object v4, Lcom/octopus/ad/internal/p;->b:Lcom/octopus/ad/internal/p;

    if-ne v3, v4, :cond_5

    const v1, 0x40cccccd    # 6.4f

    goto :goto_1

    :cond_5
    move v2, v1

    .line 12
    :cond_6
    :goto_3
    invoke-static {v0}, Lcom/octopus/ad/d/i;->a(I)I

    move-result v1

    .line 13
    invoke-static {v2}, Lcom/octopus/ad/d/i;->a(I)I

    move-result v3

    const/16 v4, 0x96

    .line 14
    invoke-static {v4}, Lcom/octopus/ad/d/i;->a(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    .line 15
    new-instance v5, Lcom/octopus/ad/a/d;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/octopus/ad/a/d;-><init>(I)V

    .line 16
    invoke-virtual {v5, v1}, Lcom/octopus/ad/a/d;->a(I)V

    .line 17
    invoke-virtual {v5, v3}, Lcom/octopus/ad/a/d;->b(I)V

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/d;->a(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/d;->d(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/octopus/ad/a/d;->c(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5, v1}, Lcom/octopus/ad/a/d;->c(I)V

    .line 22
    invoke-virtual {v5, v3}, Lcom/octopus/ad/a/d;->d(I)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v3, v4

    add-long/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/octopus/ad/a/d;->b(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v0}, Lcom/octopus/ad/a/d;->e(I)V

    .line 25
    invoke-virtual {v5, v2}, Lcom/octopus/ad/a/d;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 26
    :goto_4
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic v(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    return p0
.end method

.method private w()V
    .locals 8

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    move-result-object v0

    sget-object v1, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->x:Z

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v1}, Lcom/octopus/ad/internal/b/f;->k()Lcom/octopus/ad/a/c$z;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/octopus/ad/a/c$z;->a()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v2, Lcom/octopus/ad/R$id;->rl_auto:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->X:Landroid/widget/LinearLayout;

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v2, Lcom/octopus/ad/R$id;->tv_auto:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->ar:Landroid/view/View;

    sget v3, Lcom/octopus/ad/R$id;->tv_stop:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 9
    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->X:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    new-instance v3, Lcom/octopus/ad/b/a;

    invoke-virtual {v1}, Lcom/octopus/ad/a/c$z;->b()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x32

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/octopus/ad/b/a;-><init>(JJ)V

    iput-object v3, p0, Lcom/octopus/ad/internal/b/e;->aH:Lcom/octopus/ad/b/a;

    .line 11
    new-instance v1, Lcom/octopus/ad/internal/b/e$18;

    invoke-direct {v1, p0, v0}, Lcom/octopus/ad/internal/b/e$18;-><init>(Lcom/octopus/ad/internal/b/e;Landroid/widget/TextView;)V

    invoke-virtual {v3, v1}, Lcom/octopus/ad/b/a;->a(Lcom/octopus/ad/b/b;)V

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aH:Lcom/octopus/ad/b/a;

    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->a()V

    .line 13
    new-instance v0, Lcom/octopus/ad/internal/b/e$19;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/e$19;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static synthetic w(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->r()V

    return-void
.end method

.method private x()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aH:Lcom/octopus/ad/b/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/b/a;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->X:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic x(Lcom/octopus/ad/internal/b/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->s()V

    return-void
.end method

.method public static synthetic y(Lcom/octopus/ad/internal/b/e;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    return-object p0
.end method

.method private y()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->J:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    .line 4
    const-string v5, "?rv=1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-static {v4, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->openLocalBrowser(Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    const-string v5, "track=oct"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 7
    iget-boolean v5, p0, Lcom/octopus/ad/internal/b/e;->o:Z

    if-eqz v5, :cond_2

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&opt=10"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 9
    :cond_2
    iget-boolean v5, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    if-eqz v5, :cond_3

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&opt=1"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 11
    :cond_3
    :goto_1
    new-instance v5, Lcom/octopus/ad/internal/i;

    invoke-direct {v5, v4}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/octopus/ad/internal/c/d;->b()V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private z()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->T()Z

    move-result v0

    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->B:Z

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->A()V

    .line 5
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->B()V

    .line 6
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->C()V

    .line 7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->ax:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->ay:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->n()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->au:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->au:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    .line 14
    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->az:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public static synthetic z(Lcom/octopus/ad/internal/b/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/octopus/ad/internal/b/e;->v:Z

    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/octopus/ad/internal/b/e;->n:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/octopus/ad/internal/b/e;->n:I

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aJ:Lcom/octopus/ad/a/c$b;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$b;->v()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 234
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/octopus/ad/a/c$i;

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v2}, Lcom/octopus/ad/a/c$i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 237
    invoke-virtual {v2}, Lcom/octopus/ad/a/c$i;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/octopus/ad/internal/c/q;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    new-instance v3, Lcom/octopus/ad/internal/i;

    invoke-direct {v3, v2}, Lcom/octopus/ad/internal/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/octopus/ad/internal/c/d;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(JJ)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/octopus/ad/internal/q;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->j()Lcom/octopus/ad/a/c$l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 212
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget-object v2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {v2}, Lcom/octopus/ad/internal/b/f;->ag()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/internal/q;->a(I)V

    .line 213
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 214
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    iget-object v1, v1, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/octopus/ad/a/a;

    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/octopus/ad/a/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v1}, Lcom/octopus/ad/a/a;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getPrice()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 216
    :cond_1
    new-instance v1, Lcom/octopus/ad/a/a;

    invoke-direct {v1}, Lcom/octopus/ad/a/a;-><init>()V

    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    .line 217
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getPrice()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/octopus/ad/a/a;->a(I)V

    .line 218
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v1, p1, p2}, Lcom/octopus/ad/a/a;->a(J)V

    .line 219
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {p1, p3, p4}, Lcom/octopus/ad/a/a;->b(J)V

    .line 220
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->a(Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->b(I)V

    .line 222
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->b(Ljava/lang/String;)V

    .line 223
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->c(Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->V()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->a(Z)V

    .line 225
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->Z()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->e(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->a()Lcom/octopus/ad/a/c$b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 227
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->Y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->d(Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    iget-object p2, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    invoke-virtual {p2}, Lcom/octopus/ad/internal/b/f;->a()Lcom/octopus/ad/a/c$b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/octopus/ad/a/c$b;->v()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/octopus/ad/a/a;->a(Ljava/util/List;)V

    .line 229
    :cond_2
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    iget-object p1, p1, Lcom/octopus/ad/internal/q;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/octopus/ad/a/c$l;->c()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/octopus/ad/internal/b/e;->ac:Lcom/octopus/ad/a/a;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->P:Landroid/content/Context;

    if-nez p1, :cond_0

    .line 16
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->P:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/a/c$b;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aJ:Lcom/octopus/ad/a/c$b;

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/octopus/ad/a/c$b;->i()Lcom/octopus/ad/model/ComplianceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aK:Lcom/octopus/ad/model/ComplianceInfo;

    :cond_0
    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/c;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->O:Lcom/octopus/ad/internal/b/c;

    return-void
.end method

.method public a(Lcom/octopus/ad/internal/b/f;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    return-void
.end method

.method public a(Lcom/octopus/ad/model/AdLogoInfo;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->L:Lcom/octopus/ad/model/AdLogoInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->ad:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->ag:Z

    return-void
.end method

.method public addShakeView(Landroid/view/ViewGroup;IF)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/octopus/ad/internal/b/e$7;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/octopus/ad/internal/b/e$7;-><init>(Lcom/octopus/ad/internal/b/e;Landroid/view/ViewGroup;IF)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b()Lcom/octopus/ad/internal/b/f;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/f;->b(I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/octopus/ad/model/AdLogoInfo;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->M:Lcom/octopus/ad/model/AdLogoInfo;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->h:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->ah:Z

    return-void
.end method

.method public bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/octopus/ad/internal/nativead/NativeAdEventListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/octopus/ad/internal/b/e;->bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V

    return-void
.end method

.method public bindUnifiedView(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/octopus/ad/internal/nativead/NativeAdEventListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ai:Z

    .line 3
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    .line 4
    iput-object p4, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 5
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    .line 6
    iput-object p3, p0, Lcom/octopus/ad/internal/b/e;->au:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->k()V

    .line 8
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->b()V

    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/ViewGroup;Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ai:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->j()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getVideoUrls()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->b()Lcom/octopus/ad/internal/d/h;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/d/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;Lcom/octopus/ad/internal/d/u;)V

    .line 11
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 13
    :goto_0
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v1, :cond_3

    const v2, 0x1394a

    .line 15
    invoke-interface {v1, v2}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->af:Z

    return-void
.end method

.method public d()V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getVideoUrls()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->b()Lcom/octopus/ad/internal/d/h;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/d/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/d/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Lcom/octopus/ad/internal/e/a;->a(Ljava/lang/String;Lcom/octopus/ad/internal/d/u;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 11
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 12
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aw:Lcom/octopus/ad/internal/video/VideoStateListener;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/octopus/ad/internal/video/VideoStateListener;->onVideoReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :goto_1
    const-string v1, "OctopusAd"

    const-string v2, "An Exception Caught"

    invoke-static {v1, v2, v0}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    if-eqz v1, :cond_3

    const v2, 0x1394a

    .line 16
    invoke-interface {v1, v2}, Lcom/octopus/ad/internal/nativead/NativeAdEventListener;->onAdRenderFailed(I)V

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v1, :cond_4

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/octopus/ad/internal/b/f;->a(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->p:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->F:Z

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->x()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aB:Lcom/octopus/ad/internal/g;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/octopus/ad/internal/g;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aC:Lcom/octopus/ad/internal/h;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/octopus/ad/internal/h;->a()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/octopus/ad/d/l;->a()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->S:Lcom/octopus/ad/d/l;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->aa:Landroid/os/Handler;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aA:Lcom/octopus/ad/internal/y;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/octopus/ad/internal/y;->d()V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->aA:Lcom/octopus/ad/internal/y;

    .line 50
    .line 51
    :cond_4
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->al()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 59
    .line 60
    :cond_5
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->g:Landroid/graphics/Bitmap;

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->g:Landroid/graphics/Bitmap;

    .line 68
    .line 69
    :cond_6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->f:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->f:Landroid/graphics/Bitmap;

    .line 77
    .line 78
    :cond_7
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    .line 79
    .line 80
    if-eqz v0, :cond_8

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    .line 86
    .line 87
    :cond_8
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->ab:Ljava/lang/Runnable;

    .line 88
    .line 89
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->as:Landroid/view/View;

    .line 90
    .line 91
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->au:Ljava/util/List;

    .line 94
    .line 95
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    .line 96
    .line 97
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->aD:Ljava/util/ArrayList;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 100
    .line 101
    return-void
.end method

.method public e()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->z()V

    .line 4
    new-instance v0, Lcom/octopus/ad/internal/b/e$5;

    invoke-direct {v0, p0}, Lcom/octopus/ad/internal/b/e$5;-><init>(Lcom/octopus/ad/internal/b/e;)V

    invoke-direct {p0, v0}, Lcom/octopus/ad/internal/b/e;->a(Lcom/octopus/ad/internal/nativead/NativeAdShownListener;)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->o:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ad:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->ad:Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public f(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/octopus/ad/internal/b/f;->a(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 6

    .line 13
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->L()Lcom/octopus/ad/a/c$x;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$x;->c()Lcom/octopus/ad/a/c$q;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 17
    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/b/e;->d(Z)V

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/b/e$11;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/b/e$11;-><init>(Lcom/octopus/ad/internal/b/e;)V

    .line 19
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->c()I

    move-result v4

    int-to-long v4, v4

    .line 20
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->b()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 22
    iput-boolean v2, p0, Lcom/octopus/ad/internal/b/e;->r:Z

    .line 23
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->e()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 24
    new-instance v1, Lcom/octopus/ad/internal/b/e$13;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$13;-><init>(Lcom/octopus/ad/internal/b/e;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->aI:Lcom/octopus/ad/internal/k$a;

    .line 25
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    move-result-object v1

    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->aI:Lcom/octopus/ad/internal/k$a;

    invoke-virtual {v1, v3}, Lcom/octopus/ad/internal/k;->a(Lcom/octopus/ad/internal/k$a;)V

    .line 26
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/b/e$14;

    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/b/e$14;-><init>(Lcom/octopus/ad/internal/b/e;Z)V

    .line 27
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->d()I

    move-result v0

    int-to-long v4, v0

    .line 28
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBlurView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/octopus/ad/internal/b/e;->b(Landroid/content/Context;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->j:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->j:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public getComplianceInfo()Lcom/octopus/ad/model/ComplianceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aK:Lcom/octopus/ad/model/ComplianceInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getComplianceView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aK:Lcom/octopus/ad/model/ComplianceInfo;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createComplianceView(Landroid/content/Context;Lcom/octopus/ad/model/ComplianceInfo;FZ)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComplianceView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aK:Lcom/octopus/ad/model/ComplianceInfo;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->getScreenWidthDp(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    if-lez p2, :cond_0

    int-to-float p2, p2

    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    div-float/2addr p2, v0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aK:Lcom/octopus/ad/model/ComplianceInfo;

    const/4 v1, 0x1

    invoke-static {p1, v0, p2, v1}, Lcom/octopus/ad/internal/utilities/ViewUtil;->createComplianceView(Landroid/content/Context;Lcom/octopus/ad/model/ComplianceInfo;FZ)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCoveUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->g:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getImageUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->G:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aJ:Lcom/octopus/ad/a/c$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$b;->d()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    return v0
.end method

.method public getLandingPageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lcom/octopus/ad/R$drawable;->oct_logo:I

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getLogoInfo()Lcom/octopus/ad/model/AdLogoInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->M:Lcom/octopus/ad/model/AdLogoInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->M:Lcom/octopus/ad/model/AdLogoInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/model/AdLogoInfo;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget v1, Lcom/octopus/ad/model/AdLogoInfo;->TYPE_PIC:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->M:Lcom/octopus/ad/model/AdLogoInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getMaterialType()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->isVideo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    return v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->ab()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 11
    .line 12
    return-object v0
.end method

.method public getNativeAdType()Lcom/octopus/ad/NativeAdResponse$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->a:Lcom/octopus/ad/NativeAdResponse$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeElements()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->E:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeInfoListView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aE:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNativeView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetworkIdentifier()Lcom/octopus/ad/NativeAdResponse$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/octopus/ad/NativeAdResponse$a;->a:Lcom/octopus/ad/NativeAdResponse$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPictureHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->o()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getPictureWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->p()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/octopus/ad/internal/b/e;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getShakeValue()Lcom/octopus/ad/model/ShakeValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->aa()Lcom/octopus/ad/model/ShakeValue;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/octopus/ad/internal/b/e;->k:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->I:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextLogo(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget v0, Lcom/octopus/ad/R$drawable;->oct_logo_text:I

    .line 6
    .line 7
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getTextLogoInfo()Lcom/octopus/ad/model/AdLogoInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->L:Lcom/octopus/ad/model/AdLogoInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTextLogoUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->L:Lcom/octopus/ad/model/AdLogoInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/octopus/ad/model/AdLogoInfo;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget v1, Lcom/octopus/ad/model/AdLogoInfo;->TYPE_PIC:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->L:Lcom/octopus/ad/model/AdLogoInfo;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/octopus/ad/model/AdLogoInfo;->getAdurl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->H:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->isVideo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->getVideoUrls()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_3

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->af:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Landroid/view/TextureView;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->q()V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->V:Landroid/view/TextureView;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    new-instance v0, Landroid/widget/VideoView;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->p()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->U:Landroid/widget/VideoView;

    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_3
    const/4 p1, 0x0

    .line 58
    return-object p1
.end method

.method public h()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/octopus/ad/internal/b/f;->L()Lcom/octopus/ad/a/c$x;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$x;->c()Lcom/octopus/ad/a/c$q;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->a()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Lcom/octopus/ad/internal/b/e;->e(Z)V

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/b/e$15;

    invoke-direct {v3, p0}, Lcom/octopus/ad/internal/b/e$15;-><init>(Lcom/octopus/ad/internal/b/e;)V

    .line 8
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->c()I

    move-result v4

    int-to-long v4, v4

    .line 9
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->b()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 11
    iput-boolean v2, p0, Lcom/octopus/ad/internal/b/e;->r:Z

    .line 12
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->e()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 13
    new-instance v1, Lcom/octopus/ad/internal/b/e$16;

    invoke-direct {v1, p0}, Lcom/octopus/ad/internal/b/e$16;-><init>(Lcom/octopus/ad/internal/b/e;)V

    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->aI:Lcom/octopus/ad/internal/k$a;

    .line 14
    invoke-static {}, Lcom/octopus/ad/internal/k;->a()Lcom/octopus/ad/internal/k;

    move-result-object v1

    iget-object v3, p0, Lcom/octopus/ad/internal/b/e;->aI:Lcom/octopus/ad/internal/k$a;

    invoke-virtual {v1, v3}, Lcom/octopus/ad/internal/k;->a(Lcom/octopus/ad/internal/k$a;)V

    .line 15
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/octopus/ad/internal/b/e$17;

    invoke-direct {v3, p0, v2}, Lcom/octopus/ad/internal/b/e$17;-><init>(Lcom/octopus/ad/internal/b/e;Z)V

    .line 16
    invoke-virtual {v0}, Lcom/octopus/ad/a/c$q;->d()I

    move-result v0

    int-to-long v4, v0

    .line 17
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public hasExpired()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->F:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->s:Z

    return v0
.end method

.method public isShakeAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ah:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ag:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVideoMute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    .line 2
    .line 3
    return v0
.end method

.method public setAdWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/octopus/ad/internal/b/e;->an:I

    .line 2
    .line 3
    return-void
.end method

.method public setAutoFitWidth(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->am:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->g:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-void
.end method

.method public setIsVideoMute(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNativeAdEventListener(Lcom/octopus/ad/internal/nativead/NativeAdEventListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ak:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->P:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/octopus/ad/internal/q;->a()Lcom/octopus/ad/internal/q;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/octopus/ad/internal/q;->l()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/octopus/ad/internal/b/e;->P:Landroid/content/Context;

    .line 17
    .line 18
    :cond_0
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->ai:Z

    .line 19
    .line 20
    new-instance v0, Landroid/widget/FrameLayout;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/octopus/ad/internal/b/e;->P:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/octopus/ad/internal/b/e;->aq:Landroid/view/ViewGroup;

    .line 28
    .line 29
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->av:Lcom/octopus/ad/internal/nativead/NativeAdEventListener;

    .line 39
    .line 40
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v0, Lcom/octopus/ad/internal/p;->g:Lcom/octopus/ad/internal/p;

    .line 49
    .line 50
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->l()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->m()Lcom/octopus/ad/internal/p;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object v0, Lcom/octopus/ad/internal/p;->b:Lcom/octopus/ad/internal/p;

    .line 63
    .line 64
    if-ne p1, v0, :cond_2

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->m()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/octopus/ad/internal/b/e;->j()V

    .line 71
    .line 72
    .line 73
    :goto_0
    iget-object p1, p0, Lcom/octopus/ad/internal/b/e;->N:Lcom/octopus/ad/internal/b/f;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/octopus/ad/internal/b/f;->b()V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public setNativeInfoListView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aE:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setOnCpaListener(Lcom/octopus/ad/listener/OnCpaListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aG:Lcom/octopus/ad/listener/OnCpaListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnSensorListener(Lcom/octopus/ad/OnSensorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aF:Lcom/octopus/ad/OnSensorListener;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoStateListener(Lcom/octopus/ad/internal/video/VideoStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/internal/b/e;->aw:Lcom/octopus/ad/internal/video/VideoStateListener;

    .line 2
    .line 3
    return-void
.end method

.method public showCloseButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/octopus/ad/internal/b/e;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public toggleVideoMute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->Y:Landroid/media/MediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    .line 20
    .line 21
    xor-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/octopus/ad/internal/b/e;->al:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public unregisterViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->as:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->at:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/View;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->au:Ljava/util/List;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Lcom/octopus/ad/internal/b/e;->au:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/view/View;

    .line 70
    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-virtual {p0}, Lcom/octopus/ad/internal/b/e;->destroy()V

    .line 78
    .line 79
    .line 80
    return-void
.end method
