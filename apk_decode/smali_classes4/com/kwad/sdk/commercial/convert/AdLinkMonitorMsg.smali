.class public Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;
.super Lcom/kwad/sdk/commercial/c/a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/ksad/json/annotation/KsJson;
.end annotation


# static fields
.field public static final CACHE_LOAD:I = 0x2

.field public static final GET_VIEW_COST:I = 0x3

.field public static final NATIVE:I = 0x1

.field public static final ONLINE_LOAD:I = 0x1

.field public static final PRE_RENDER_COST:I = 0x2

.field public static final REQUEST_COST:I = 0x1

.field public static final TK:I = 0x2

.field public static final VIEW_RENDER_COST:I = 0x4

.field private static final serialVersionUID:J = -0x6017fddae945733cL


# instance fields
.field public adStyle:I

.field public durationTime:J

.field public materialLoadType:I

.field public renderType:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/kwad/sdk/commercial/c/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static obtain()Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public setAdStyle(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->adStyle:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setDurationTime(J)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->durationTime:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaterialLoadType(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->materialLoadType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setRenderType(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->renderType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setStatus(I)Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/sdk/commercial/convert/AdLinkMonitorMsg;->status:I

    .line 2
    .line 3
    return-object p0
.end method
