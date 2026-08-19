.class public Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/ad/MsAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private channel:Ljava/lang/String;

.field private fetchCount:I

.field private fixedHeight:I

.field private height:I

.field private hideSkipButton:Z

.field private isClickToClose:Z

.field private isMute:Z

.field private isSplashFullScreen:Z

.field private isVideoAutoPlay:Z

.field private nativeFeedUseShake:Z

.field private pid:Ljava/lang/String;

.field private showDetail:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->width:I

    .line 6
    .line 7
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->height:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isVideoAutoPlay:Z

    .line 11
    .line 12
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->fetchCount:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isMute:Z

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic access$000(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->width:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1000(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isSplashFullScreen:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1100(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->channel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->height:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isClickToClose:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$400(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->showDetail:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$500(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isVideoAutoPlay:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$600(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->fixedHeight:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$700(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->fetchCount:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isMute:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$900(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->hideSkipButton:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public build()Lcom/meishu/sdk/core/ad/MsAdSlot;
    .locals 1

    .line 1
    new-instance v0, Lcom/meishu/sdk/core/ad/MsAdSlot;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/meishu/sdk/core/ad/MsAdSlot;-><init>(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->channel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFetchCount(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->fetchCount:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setFixHeight(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->fixedHeight:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setHeight(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->height:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsClickToClose(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isClickToClose:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsHideSkipBtn(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->hideSkipButton:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsVideoAutoPlay(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isVideoAutoPlay:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setIsshowDetail(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->showDetail:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setNativeFeedUseShake(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->nativeFeedUseShake:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setPid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSplashIsFullScreen(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isSplashFullScreen:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setVideoMute(Z)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->isMute:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setWidth(I)Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->width:I

    .line 2
    .line 3
    return-object p0
.end method
