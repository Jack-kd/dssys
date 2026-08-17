.class public abstract Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/ad/BaseAdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;",
        "K:",
        "Lcom/meishu/sdk/core/ad/BaseAdSlot;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/BaseAdSlot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract build()Lcom/meishu/sdk/core/ad/BaseAdSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public setActExt(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setActType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setActionDesc(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAdPatternType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adPatternType:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setAdType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4202(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAderId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAdg(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAdp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAppFeature(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAppId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setAppIntro(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAppIntroUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAppName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->appName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setAppPrivacy(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$702(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAppSize(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$502(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAppVer(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$602(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setCBC(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4402(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setCat(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1102(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setCid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setClickType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setClickUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clickUrl:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setClickid(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->clickid:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setClkArea(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setCloseUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5102(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setComments(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->comments:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDClickData(Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;)Lcom/meishu/sdk/core/domain/MeishuAdInfo$DClickData;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDPSIGN(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$7102(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dUrl:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDeepLink(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->deep_link:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDefImage(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDefaultCoord(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5902(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDesc(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->desc:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDeveloper(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$102(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDirectMarket(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1902(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDn_active([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_active:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDn_inst_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_inst_start:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDn_inst_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_inst_succ:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDn_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_start:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDn_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dn_succ:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDownNum(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->downNum:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDpSign(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDp_fail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dp_fail:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDp_start([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dp_start:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDp_succ([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->dp_succ:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setDrawing(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setDynamicMap(Ljava/util/HashMap;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setEcpm(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2002(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setErrorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$902(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setEventUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4802(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setExpireTimestamp(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3002(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setExtend_down(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2202(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setExtend_interval(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setExtend_left(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2302(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setExtend_max_count(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setExtend_right(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2402(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setExtend_up(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setFieldExport(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5502(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setFromId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->from_id:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setFromLogo(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->fromLogo:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setH5Ext(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setH5Url(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6202(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setIcon(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setIconUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->iconUrl:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setImageUrls([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->imageUrls:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setInteractionType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->interactionType:I

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setLoadedTime(J)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2902(Lcom/meishu/sdk/core/ad/BaseAdSlot;J)J

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setLossUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5002(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setMaterialTimeout(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6102(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setMonitorUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->monitorUrl:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setNOP(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setNativeSE(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$7202(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setPaymentTypes(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPermissionUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3902(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPermisssList(Ljava/util/List;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meishu/sdk/core/domain/MeishuAdInfo$PermissionBean;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPosId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->posId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setPowerCount(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPowerDelay(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPowerIndex(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3302(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPowerIndex2(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$3402(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setPrivacyAgreement(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setReqId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setResponUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->responUrl:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setRewardTmpId(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setRewardTmpTime(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6602(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setRewardTmpType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setRewardTmpUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setRs(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$7002(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setS_code(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2702(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setS_ext(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$2802(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setScaleType(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4702(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setScheme(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$5302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setScore(F)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->score:F

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setSkipBtnLocation(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$7502(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setTitle(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->title:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setUob(Ljava/lang/Integer;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$6902(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setVideo_cover(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->video_cover:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public setWebTempId(I)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$7302(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWebTempUrl(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$7402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWinUrl([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4902(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWxAppId(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$4602(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWxFail([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1702(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWxStart([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1502(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWxSuccess([Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1602(Lcom/meishu/sdk/core/ad/BaseAdSlot;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWx_path(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1402(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setWx_username(Ljava/lang/String;)Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->this$0:Lcom/meishu/sdk/core/ad/BaseAdSlot;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->access$1302(Lcom/meishu/sdk/core/ad/BaseAdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;->returnThis()Lcom/meishu/sdk/core/ad/BaseAdSlot$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
