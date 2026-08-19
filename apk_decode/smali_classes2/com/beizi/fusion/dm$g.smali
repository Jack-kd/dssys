.class final Lcom/beizi/fusion/dm$g;
.super Lcom/beizi/fusion/wa;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/vb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/cfg/root/ConfigResponseModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/wa;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/cfg/root/ConfigResponseModel;->getUpdateMD5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$g;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/cfg/root/ConfigResponseModel;->getRequestUrlMD5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/dm$g;->b:Ljava/lang/String;

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/beizi/fusion/dm$g;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/beizi/fusion/asnp/adn/ad/model/impl/resp/cfg/root/ConfigResponseModel;->getStatisticsMD5()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/dm$g;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/beizi/fusion/dm$g;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/beizi/fusion/wa;-><init>()V

    .line 7
    iget-object v0, p1, Lcom/beizi/fusion/dm$g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$g;->a:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lcom/beizi/fusion/dm$g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$g;->b:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/beizi/fusion/dm$g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$g;->c:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/beizi/fusion/dm$g;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/beizi/fusion/dm$g;->d:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lcom/beizi/fusion/dm$g;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/beizi/fusion/dm$g;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/beizi/fusion/dm$g;
    .locals 1

    .line 1
    new-instance v0, Lcom/beizi/fusion/dm$g;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/dm$g;-><init>(Lcom/beizi/fusion/dm$g;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/dm$g;->c:Ljava/lang/String;

    return-void
.end method
