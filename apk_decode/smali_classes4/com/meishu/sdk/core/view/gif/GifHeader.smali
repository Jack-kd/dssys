.class public Lcom/meishu/sdk/core/view/gif/GifHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bgColor:I

.field public bgIndex:I

.field public currentFrame:Lcom/meishu/sdk/core/view/gif/GifFrame;

.field public frameCount:I

.field public frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/view/gif/GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field public gct:[I

.field public gctFlag:Z

.field public gctSize:I

.field public height:I

.field public loopCount:I

.field public pixelAspect:I

.field public status:I

.field public width:I


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
    iput-object v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->gct:[I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->status:I

    .line 9
    .line 10
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frames:Ljava/util/List;

    .line 18
    .line 19
    iput v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->loopCount:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getNumFrames()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->frameCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->status:I

    .line 2
    .line 3
    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/meishu/sdk/core/view/gif/GifHeader;->width:I

    .line 2
    .line 3
    return v0
.end method
