.class public Lcom/sigmob/sdk/base/models/ClickCommon;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AIM:Ljava/lang/String; = "aim"

.field public static final CLICK_AREA:Ljava/lang/String; = "click_area"

.field public static final CLICK_AREA_APPINFO:Ljava/lang/String; = "appinfo"

.field public static final CLICK_AREA_BTN:Ljava/lang/String; = "btn"

.field public static final CLICK_AREA_COMPANION:Ljava/lang/String; = "companion"

.field public static final CLICK_AREA_COMPONENT:Ljava/lang/String; = "component"

.field public static final CLICK_AREA_MATERIAL:Ljava/lang/String; = "material"

.field public static final CLICK_CB_STATE:Ljava/lang/String; = "click_cb_state"

.field public static final CLICK_LOSE_RATE:Ljava/lang/String; = "click_lose_rate"

.field public static final CLICK_SCENE_AD:Ljava/lang/String; = "ad"

.field public static final CLICK_SCENE_APPINFO:Ljava/lang/String; = "appinfo"

.field public static final CLICK_SCENE_ENDCARD:Ljava/lang/String; = "endcard"

.field public static final CLICK_SCENE_PREVIEW:Ljava/lang/String; = "preview"

.field public static final CLICK_SCENE_TEMPLATE:Ljava/lang/String; = "template"

.field public static final CPT_RENDER_TYPE:Ljava/lang/String; = "cpt_render_type"


# instance fields
.field public adarea_h:Ljava/lang/String;

.field public adarea_w:Ljava/lang/String;

.field public adarea_x:Ljava/lang/String;

.field public adarea_y:Ljava/lang/String;

.field public aim:Ljava/lang/Integer;

.field public clickCoordinate:Ljava/lang/String;

.field public clickUIType:Lcom/sigmob/sdk/base/a;

.field public clickUrl:Ljava/lang/String;

.field public click_area:Ljava/lang/String;

.field public click_cb_state:Ljava/lang/Integer;

.field public click_lose_rate:Ljava/lang/Integer;

.field public click_scene:Ljava/lang/String;

.field public cpt_render_type:Ljava/lang/Integer;

.field public down:Lcom/czhj/sdk/common/utils/TouchLocation;

.field public isDeeplink:Ljava/lang/String;

.field public is_final_click:Z

.field public sld:Ljava/lang/String;

.field public template_id:Ljava/lang/String;

.field public turn_time:Ljava/lang/String;

.field public turn_x:Ljava/lang/String;

.field public turn_y:Ljava/lang/String;

.field public turn_z:Ljava/lang/String;

.field public up:Lcom/czhj/sdk/common/utils/TouchLocation;

.field public widget_id:I

.field public x_max_acc:Ljava/lang/String;

.field public y_max_acc:Ljava/lang/String;

.field public z_max_acc:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->sld:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_lose_rate:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->click_cb_state:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getClickCoordinate()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->down:Lcom/czhj/sdk/common/utils/TouchLocation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/czhj/sdk/common/utils/TouchLocation;->getX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->down:Lcom/czhj/sdk/common/utils/TouchLocation;

    invoke-virtual {v1}, Lcom/czhj/sdk/common/utils/TouchLocation;->getY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    invoke-virtual {v2}, Lcom/czhj/sdk/common/utils/TouchLocation;->getX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->up:Lcom/czhj/sdk/common/utils/TouchLocation;

    invoke-virtual {v3}, Lcom/czhj/sdk/common/utils/TouchLocation;->getY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s,%s,%s,%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sigmob/sdk/base/models/ClickCommon;->clickCoordinate:Ljava/lang/String;

    return-object v0
.end method
