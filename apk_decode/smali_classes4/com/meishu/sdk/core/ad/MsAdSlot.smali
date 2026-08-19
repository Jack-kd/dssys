.class public Lcom/meishu/sdk/core/ad/MsAdSlot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;
    }
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

.field private pid:Ljava/lang/String;

.field private showDetail:Z

.field private width:I


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->width:I

    .line 6
    .line 7
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->height:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isVideoAutoPlay:Z

    .line 11
    .line 12
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->fetchCount:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isMute:Z

    .line 15
    .line 16
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$000(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->pid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$100(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->width:I

    .line 27
    .line 28
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$200(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->height:I

    .line 33
    .line 34
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$300(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isClickToClose:Z

    .line 39
    .line 40
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$400(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->showDetail:Z

    .line 45
    .line 46
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$500(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isVideoAutoPlay:Z

    .line 51
    .line 52
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$600(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->fixedHeight:I

    .line 57
    .line 58
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$700(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->fetchCount:I

    .line 63
    .line 64
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$800(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isMute:Z

    .line 69
    .line 70
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$900(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->hideSkipButton:Z

    .line 75
    .line 76
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$1000(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isSplashFullScreen:Z

    .line 81
    .line 82
    invoke-static {p1}, Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;->access$1100(Lcom/meishu/sdk/core/ad/MsAdSlot$Builder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->channel:Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->channel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFetchCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->fetchCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getFixedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->fixedHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getIsClickToClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isClickToClose:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsHideSkipButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->hideSkipButton:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsMute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isMute:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsShowDetail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->showDetail:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIsVideoAutoPlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isVideoAutoPlay:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->pid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public isSplashFullScreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/meishu/sdk/core/ad/MsAdSlot;->isSplashFullScreen:Z

    .line 2
    .line 3
    return v0
.end method
