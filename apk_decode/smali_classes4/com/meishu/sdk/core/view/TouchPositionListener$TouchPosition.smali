.class public Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/view/TouchPositionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPosition"
.end annotation


# instance fields
.field private downTime:Ljava/sql/Timestamp;

.field private downX:I

.field private downY:I

.field private touchTime:Ljava/sql/Timestamp;

.field private upTime:Ljava/sql/Timestamp;

.field private upX:I

.field private upY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$002(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downX:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$102(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downY:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$202(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->touchTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$302(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic access$402(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upX:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$502(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upY:I

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic access$602(Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;Ljava/sql/Timestamp;)Ljava/sql/Timestamp;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public getDownTime()Ljava/sql/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDownX()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downX:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    float-to-int v0, v0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public getDownY()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downY:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    float-to-int v0, v0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public getTouchTime()Ljava/sql/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->touchTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpTime()Ljava/sql/Timestamp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUpX()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upX:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    float-to-int v0, v0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public getUpY()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upY:I

    .line 6
    .line 7
    int-to-float v1, v1

    .line 8
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/m;->b(Landroid/content/Context;F)F

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    float-to-int v0, v0

    .line 13
    return v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public setDownTime(Ljava/sql/Timestamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-void
.end method

.method public setDownX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downX:I

    .line 2
    .line 3
    return-void
.end method

.method public setDownY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downY:I

    .line 2
    .line 3
    return-void
.end method

.method public setTouchTime(Ljava/sql/Timestamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->touchTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-void
.end method

.method public setUpTime(Ljava/sql/Timestamp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upTime:Ljava/sql/Timestamp;

    .line 2
    .line 3
    return-void
.end method

.method public setUpX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upX:I

    .line 2
    .line 3
    return-void
.end method

.method public setUpY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upY:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "{downX: "

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downX:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, ", downY: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->downY:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", upX: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upX:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", upY: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->upY:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", touchTime: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/meishu/sdk/core/view/TouchPositionListener$TouchPosition;->touchTime:Ljava/sql/Timestamp;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, "}"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    return-object v0
.end method
