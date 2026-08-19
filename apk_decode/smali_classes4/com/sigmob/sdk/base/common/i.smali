.class public Lcom/sigmob/sdk/base/common/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "i"


# instance fields
.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:I

.field public k:Z

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/sigmob/sdk/base/common/ac;

.field private r:Lcom/sigmob/sdk/base/views/q;

.field private s:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/sigmob/sdk/base/views/q$b;

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sigmob/sdk/base/models/BaseAdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sigmob/sdk/base/common/i;->j:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/i;->l:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/i;
    .locals 1

    .line 2
    new-instance v0, Lcom/sigmob/sdk/base/common/i;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sigmob/sdk/base/common/i;->b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/i;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/sigmob/sdk/base/common/i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;Z)V
    .locals 4

    .line 17
    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getsubInteractionType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-static {v1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {p0}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sigmob/sdk/base/utils/h;->c(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/h;->c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "handleMRAID2Download: error = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/czhj/sdk/logger/SigmobLog;->e(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    if-nez p2, :cond_4

    new-instance p2, Lcom/czhj/sdk/common/network/JsonRequest;

    new-instance v1, Lcom/sigmob/sdk/base/common/i$3;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/sdk/base/common/i$3;-><init>(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    invoke-direct {p2, p1, v1, v0}, Lcom/czhj/sdk/common/network/JsonRequest;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/network/JsonRequest$Listener;I)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance p2, Lcom/sigmob/sdk/base/common/X;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/base/common/X;-><init>(Ljava/lang/String;)V

    const-string v0, "download_start"

    const-string v1, "0"

    invoke-static {v0, v1, p0, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance p2, Lcom/sigmob/sdk/base/common/Y;

    invoke-direct {p2, p1}, Lcom/sigmob/sdk/base/common/Y;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v1, "request queue is null"

    invoke-static {v0, p1, v1, p0, p2}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    goto :goto_1

    :cond_3
    const-string p0, "GDTRequestConvert"

    invoke-virtual {p2, p0}, Lcom/czhj/volley/Request;->setTag(Ljava/lang/Object;)Lcom/czhj/volley/Request;

    invoke-virtual {v0, p2}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    goto :goto_1

    :cond_4
    invoke-static {p1, p0}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V
    .locals 8

    .line 18
    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->is_final_click:Z

    const-string v1, "0"

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v2

    const-string v3, "_AX_"

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_x:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_AY_"

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_y:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_AW_"

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_w:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_AH_"

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->adarea_h:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "5"

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "_CPTIDS_"

    const-string v5, "_SLD_"

    const-string v6, "-999"

    if-eqz v3, :cond_3

    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_TURNX_"

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_x:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_TURNY_"

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_y:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_TURNZ_"

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_z:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_TURNTIME_"

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->turn_time:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->widget_id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v3, "2"

    iget-object v7, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->widget_id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_XMAXACC_"

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->x_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_YMAXACC_"

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->y_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_ZMAXACC_"

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->z_max_acc:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getCreativeType()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5

    iput-object v1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    iget-object v3, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->down:Lcom/czhj/sdk/common/utils/TouchLocation;

    iget-object v4, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    invoke-virtual {v2, v3, v4}, Lcom/sigmob/sdk/base/models/SigMacroCommon;->updateClickMarco(Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;)V

    invoke-virtual {v2, v5, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getTemplateId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_TEMPLATE_"

    invoke-virtual {v2, v1, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object p1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_area:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_CLICKAREA_"

    invoke-virtual {v2, v1, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object p1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p2, Lcom/sigmob/sdk/base/models/ClickCommon;->click_scene:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_CLICKSCENE_"

    invoke-virtual {v2, p2, p1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p1, "_FINALCLICK_"

    invoke-virtual {v2, p1, v0}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->addMarcoKey(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic a(Ljava/lang/Object;)V
    .locals 1

    .line 19
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 21
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmobError;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/views/q$b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/i;->t:Lcom/sigmob/sdk/base/views/q$b;

    return-object p0
.end method

.method private b(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getSessionManager()Lcom/sigmob/sdk/base/common/ah;

    move-result-object p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object p3, Lcom/sigmob/sdk/base/common/i$5;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const-string p1, "click"

    :goto_1
    invoke-interface {p2, p1, p4}, Lcom/sigmob/sdk/base/common/ah;->a(Ljava/lang/String;I)V

    return-void

    :cond_2
    const-string p1, "full_video_click"

    goto :goto_1

    :cond_3
    const-string p1, "companion_click"

    goto :goto_1
.end method

.method public static synthetic b(Lcom/sigmob/sdk/base/common/i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sigmob/sdk/base/common/i;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic b(Ljava/lang/Object;)V
    .locals 1

    .line 8
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 10
    instance-of v0, p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;

    invoke-virtual {p1, p0}, Lcom/sigmob/sdk/base/mta/PointEntitySigmob;->setFinal_url(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/sigmob/sdk/base/common/i;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/sigmob/sdk/base/common/i;->m:Z

    return p0
.end method

.method public static synthetic d(Lcom/sigmob/sdk/base/common/i;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/sigmob/sdk/base/common/i;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/sigmob/sdk/base/common/i;)Lcom/sigmob/sdk/base/common/ac;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sigmob/sdk/base/common/i;->q:Lcom/sigmob/sdk/base/common/ac;

    return-object p0
.end method

.method private l()Lcom/sigmob/sdk/base/models/BaseAdUnit;
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->u:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/base/models/BaseAdUnit;

    return-object v0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/i;->m:Z

    return-void
.end method


# virtual methods
.method public a(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/d;",
            ">;"
        }
    .end annotation

    .line 4
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_4

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance p3, Lcom/sigmob/sdk/videoAd/d;

    const-string p4, "play_quarter"

    invoke-direct {p3, p4, p1}, Lcom/sigmob/sdk/videoAd/d;-><init>(Ljava/lang/String;F)V

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->l:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sigmob/sdk/videoAd/d;

    invoke-virtual {v0, p3}, Lcom/sigmob/sdk/videoAd/d;->a(Lcom/sigmob/sdk/videoAd/d;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/czhj/sdk/common/track/AdTracker;->isTracked()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object p2

    :cond_4
    :goto_2
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/sigmob/sdk/base/common/i;->w:I

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/views/q$b;)V
    .locals 0

    .line 6
    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sigmob/sdk/base/common/i;->s:Ljava/lang/ref/WeakReference;

    :cond_1
    iput-object p3, p0, Lcom/sigmob/sdk/base/common/i;->t:Lcom/sigmob/sdk/base/views/q$b;

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 7
    const-string p2, "context cannot be null."

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 p1, 0x0

    const-string p2, "start"

    invoke-static {p2, p1, p3, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    invoke-static {p3, p2}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/czhj/sdk/common/utils/TouchLocation;Lcom/sigmob/sdk/base/a;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 8
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 9
    const-string p1, "landing_page_show"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;I)V
    .locals 1

    .line 10
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 p1, 0x0

    invoke-static {p4, p5, p2, p3, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 11
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11

    .line 12
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getClickCommon()Lcom/sigmob/sdk/base/models/ClickCommon;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAndroidMarket()Lcom/sigmob/sdk/base/models/rtb/AndroidMarket;

    move-result-object v4

    invoke-static {p2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    iput-object p1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUIType:Lcom/sigmob/sdk/base/a;

    iput-object p3, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    iput-object v1, v0, Lcom/sigmob/sdk/base/models/ClickCommon;->clickUrl:Ljava/lang/String;

    invoke-direct {p0, v2, p4}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Z)V

    new-instance v0, Lcom/sigmob/sdk/base/common/ao$a;

    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/ao$a;-><init>()V

    sget-object v1, Lcom/sigmob/sdk/base/common/an;->a:Lcom/sigmob/sdk/base/common/an;

    sget-object v5, Lcom/sigmob/sdk/base/common/an;->g:Lcom/sigmob/sdk/base/common/an;

    sget-object v6, Lcom/sigmob/sdk/base/common/an;->e:Lcom/sigmob/sdk/base/common/an;

    sget-object v7, Lcom/sigmob/sdk/base/common/an;->f:Lcom/sigmob/sdk/base/common/an;

    sget-object v8, Lcom/sigmob/sdk/base/common/an;->d:Lcom/sigmob/sdk/base/common/an;

    sget-object v9, Lcom/sigmob/sdk/base/common/an;->c:Lcom/sigmob/sdk/base/common/an;

    sget-object v10, Lcom/sigmob/sdk/base/common/an;->b:Lcom/sigmob/sdk/base/common/an;

    filled-new-array/range {v5 .. v10}, [Lcom/sigmob/sdk/base/common/an;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/sigmob/sdk/base/common/ao$a;->a(Lcom/sigmob/sdk/base/common/an;[Lcom/sigmob/sdk/base/common/an;)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object v7

    new-instance v0, Lcom/sigmob/sdk/base/common/i$4;

    move-object v1, p0

    move-object v6, p1

    move v3, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sigmob/sdk/base/common/i$4;-><init>(Lcom/sigmob/sdk/base/common/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;ZLcom/sigmob/sdk/base/models/rtb/AndroidMarket;ZLcom/sigmob/sdk/base/a;)V

    invoke-virtual {v7, v0}, Lcom/sigmob/sdk/base/common/ao$a;->a(Lcom/sigmob/sdk/base/common/ao$b;)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object p1

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/common/ao$a;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object p1

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isSkipSigmobBrowser()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/common/ao$a;->a(Z)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object p1

    invoke-virtual {v2}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getAd()Lcom/sigmob/sdk/base/models/rtb/Ad;

    move-result-object v0

    iget-object v0, v0, Lcom/sigmob/sdk/base/models/rtb/Ad;->forbiden_parse_landingpage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/base/common/ao$a;->b(Z)Lcom/sigmob/sdk/base/common/ao$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sigmob/sdk/base/common/ao$a;->a()Lcom/sigmob/sdk/base/common/ao;

    move-result-object p1

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sigmob/sdk/base/common/ao;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONObject;)V
    .locals 17

    .line 13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object/from16 v4, p6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "handleUrlAction: clickUIType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", coordinate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isRecord = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", showAppElement = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", ext = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const/4 v5, 0x2

    if-nez v4, :cond_0

    move v8, v5

    goto :goto_0

    :cond_0
    const-string v8, "interaction_type"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    :goto_0
    const/4 v9, 0x0

    if-nez v4, :cond_1

    move v10, v9

    goto :goto_1

    :cond_1
    const-string v10, "disable_landing"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    :goto_1
    invoke-static {v2}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    if-nez v10, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v6, "failback_url"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "product_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "app_icon_url"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object v11

    :try_start_0
    invoke-direct {v0}, Lcom/sigmob/sdk/base/common/i;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v12

    invoke-static {v12}, Lcom/sigmob/sdk/base/utils/v;->b(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v12, v8}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->setMraidInteractionType(I)V

    :cond_3
    const/4 v14, 0x1

    if-eqz v13, :cond_4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->enableSmallWindow(Ljava/lang/Integer;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v13, v14

    goto :goto_2

    :cond_4
    move v13, v9

    :goto_2
    const/4 v15, 0x0

    if-eq v8, v14, :cond_9

    if-eq v8, v5, :cond_7

    const/4 v2, 0x7

    if-eq v8, v2, :cond_6

    const/16 v2, 0x9

    if-eq v8, v2, :cond_5

    goto :goto_4

    :cond_5
    const-string v2, "package_name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v15, v2, v13}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    const-string v2, "wx_app_id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "wx_app_path"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "wx_app_username"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "wx_business_type"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    const-string v2, "wx_ext_msg"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v11 .. v16}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_7
    iput-object v2, v0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    if-nez v12, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v12}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getApkDownloadType()I

    move-result v9

    :goto_3
    iget-object v2, v0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    invoke-static {v2, v10, v7, v9}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_9
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v11, v2, v15, v13}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    :try_start_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/sigmob/sdk/base/utils/h;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :goto_4
    iget-object v2, v0, Lcom/sigmob/sdk/base/common/i;->q:Lcom/sigmob/sdk/base/common/ac;

    if-eqz v2, :cond_a

    invoke-interface {v2, v3, v1}, Lcom/sigmob/sdk/base/common/ac;->onAdClick(ZLcom/sigmob/sdk/base/a;)V

    :cond_a
    return-void

    :cond_b
    :goto_5
    invoke-virtual/range {p0 .. p5}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Z)V
    .locals 6

    .line 14
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sigmob/sdk/base/common/i;->a(Lcom/sigmob/sdk/base/a;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public a(Lcom/sigmob/sdk/base/common/ac;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->q:Lcom/sigmob/sdk/base/common/ac;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->i:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sigmob/sdk/videoAd/d;",
            ">;)V"
        }
    .end annotation

    .line 22
    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sigmob/sdk/base/common/i;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/i;->v:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 4
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 5
    const-string p1, "landing_page_close"

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void
.end method

.method public b(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/i;->u:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/content/Context;ILcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 0

    .line 3
    const-string p2, "context cannot be null"

    invoke-static {p1, p2}, Lcom/czhj/sdk/common/utils/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Z

    return-void
.end method

.method public c(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
    .locals 1

    .line 4
    const-string v0, "click"

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/network/h;->a(Lcom/sigmob/sdk/base/models/BaseAdUnit;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 5
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 4
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 3
    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/sigmob/sdk/b;->e()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-static {p1, v0, v2}, Lcom/sigmob/sdk/base/common/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getLanding_page()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p1

    :cond_2
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getMacroCommon()Lcom/sigmob/sdk/base/models/SigMacroCommon;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/czhj/sdk/common/track/BaseMacroCommon;->macroProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getsubInteractionType()I

    move-result v3

    if-ne v3, v2, :cond_4

    new-instance p1, Lcom/czhj/sdk/common/network/JsonRequest;

    new-instance v3, Lcom/sigmob/sdk/base/common/i$2;

    invoke-direct {v3, p0, v0}, Lcom/sigmob/sdk/base/common/i$2;-><init>(Lcom/sigmob/sdk/base/common/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-direct {p1, v1, v3, v2}, Lcom/czhj/sdk/common/network/JsonRequest;-><init>(Ljava/lang/String;Lcom/czhj/sdk/common/network/JsonRequest$Listener;I)V

    invoke-static {}, Lcom/czhj/sdk/common/network/Networking;->getSigRequestQueue()Lcom/czhj/sdk/common/network/SigmobRequestQueue;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance p1, Lcom/sigmob/sdk/base/common/V;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/common/V;-><init>(Lcom/sigmob/sdk/base/common/i;)V

    const-string v1, "download_start"

    const-string v2, "0"

    invoke-static {v1, v2, v0, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    new-instance p1, Lcom/sigmob/sdk/base/common/W;

    invoke-direct {p1, p0}, Lcom/sigmob/sdk/base/common/W;-><init>(Lcom/sigmob/sdk/base/common/i;)V

    const/4 v2, 0x0

    const-string v3, "request queue is null."

    invoke-static {v1, v2, v3, v0, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;ILjava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void

    :cond_3
    const-string v0, "GDTRequestConvert"

    invoke-virtual {p1, v0}, Lcom/czhj/volley/Request;->setTag(Ljava/lang/Object;)Lcom/czhj/volley/Request;

    invoke-virtual {v1, p1}, Lcom/czhj/volley/RequestQueue;->add(Lcom/czhj/volley/Request;)Lcom/czhj/volley/Request;

    return-void

    :cond_4
    iput-object p1, p0, Lcom/sigmob/sdk/base/common/i;->o:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sigmob/sdk/base/common/q;->a(Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    return-void
.end method

.method public g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->b:Ljava/util/Map;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sigmob/sdk/base/common/i;->n:Z

    return v0
.end method

.method public i()Z
    .locals 6

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "showDownloadDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/czhj/sdk/logger/SigmobLog;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/sdk/base/common/i;->s:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->getadPrivacy()Lcom/sigmob/sdk/base/models/rtb/AdPrivacy;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    if-nez v4, :cond_2

    new-instance v4, Lcom/sigmob/sdk/base/views/q;

    invoke-direct {v4, v2, v0}, Lcom/sigmob/sdk/base/views/q;-><init>(Landroid/content/Context;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    iput-object v4, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    new-instance v5, Lcom/sigmob/sdk/base/common/i$1;

    invoke-direct {v5, p0, v0}, Lcom/sigmob/sdk/base/common/i$1;-><init>(Lcom/sigmob/sdk/base/common/i;Lcom/sigmob/sdk/base/models/BaseAdUnit;)V

    invoke-virtual {v4, v5}, Lcom/sigmob/sdk/base/views/q;->a(Lcom/sigmob/sdk/base/views/q$b;)V

    :cond_2
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sigmob/sdk/base/views/q;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/sigmob/sdk/base/common/i;->m:Z

    if-nez v4, :cond_4

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/q;->show()V

    iput-boolean v0, p0, Lcom/sigmob/sdk/base/common/i;->m:Z

    return v0

    :cond_3
    iput-boolean v1, p0, Lcom/sigmob/sdk/base/common/i;->m:Z

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    invoke-virtual {v1}, Lcom/sigmob/sdk/base/views/q;->c()V

    iput-object v3, p0, Lcom/sigmob/sdk/base/common/i;->r:Lcom/sigmob/sdk/base/views/q;

    :cond_4
    return v0

    :cond_5
    return v1
.end method

.method public j()Z
    .locals 5

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->l()Lcom/sigmob/sdk/base/models/BaseAdUnit;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sigmob/sdk/base/models/BaseAdUnit;->isDownloadDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sigmob/sdk/base/common/i;->i()Z

    move-result v0

    sget-object v2, Lcom/sigmob/sdk/base/common/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDownloadDialog: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/sigmob/sdk/base/utils/k;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_1
    return v1
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/i;->t:Lcom/sigmob/sdk/base/views/q$b;

    iput-object v0, p0, Lcom/sigmob/sdk/base/common/i;->q:Lcom/sigmob/sdk/base/common/ac;

    invoke-direct {p0}, Lcom/sigmob/sdk/base/common/i;->m()V

    return-void
.end method
