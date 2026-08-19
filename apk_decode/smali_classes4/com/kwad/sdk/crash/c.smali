.class public Lcom/kwad/sdk/crash/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/crash/c$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "c"


# instance fields
.field public final Nt:Ljava/lang/String;

.field public final aGw:Z

.field public final bdA:Z

.field public final bdB:Z

.field public final bdE:Lcom/kwad/sdk/crash/model/c;

.field public final bdF:Lcom/kwad/sdk/crash/model/a;

.field public final bdG:Lcom/kwad/sdk/crash/h;

.field public final bdH:[Ljava/lang/String;

.field public final bdI:[Ljava/lang/String;

.field public final bdJ:Z

.field public final bdK:Lcom/kwad/sdk/crash/f;

.field public final bdL:Ljava/lang/String;

.field public final bdM:Ljava/lang/String;

.field public final bdN:Ljava/lang/String;

.field public final bdO:Ljava/lang/String;

.field public final bdP:Ljava/lang/String;

.field public final bdQ:Ljava/lang/String;

.field public final bdR:Ljava/lang/String;

.field public final bdS:Ljava/lang/String;

.field public final bdT:Ljava/lang/String;

.field public final bdU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/sdk/crash/a;",
            ">;"
        }
    .end annotation
.end field

.field public final bdv:D

.field public final channel:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final platform:Ljava/lang/String;

.field public final sdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/kwad/sdk/crash/c$a;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/kwad/sdk/crash/model/c;

    invoke-direct {v0}, Lcom/kwad/sdk/crash/model/c;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/crash/c;->bdE:Lcom/kwad/sdk/crash/model/c;

    .line 4
    new-instance v1, Lcom/kwad/sdk/crash/model/a;

    invoke-direct {v1}, Lcom/kwad/sdk/crash/model/a;-><init>()V

    iput-object v1, p0, Lcom/kwad/sdk/crash/c;->bdF:Lcom/kwad/sdk/crash/model/a;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/kwad/sdk/crash/c;->bdU:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->a(Lcom/kwad/sdk/crash/c$a;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwad/sdk/crash/c;->bdJ:Z

    .line 7
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->b(Lcom/kwad/sdk/crash/c$a;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwad/sdk/crash/c;->bdA:Z

    .line 8
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->c(Lcom/kwad/sdk/crash/c$a;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwad/sdk/crash/c;->bdB:Z

    .line 9
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->d(Lcom/kwad/sdk/crash/c$a;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/kwad/sdk/crash/c;->aGw:Z

    .line 10
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->e(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdQ:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->f(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdR:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->g(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdS:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->h(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdT:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->i(Lcom/kwad/sdk/crash/c$a;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->context:Landroid/content/Context;

    .line 15
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->j(Lcom/kwad/sdk/crash/c$a;)Lcom/kwad/sdk/crash/f;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdK:Lcom/kwad/sdk/crash/f;

    .line 16
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->k(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->platform:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->l(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdL:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->m(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdM:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->n(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdN:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->o(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->sdkVersion:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->p(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->Nt:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->q(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->channel:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->r(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdO:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->s(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/kwad/sdk/crash/c;->bdP:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->t(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kwad/sdk/crash/model/a;->mAppId:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->u(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kwad/sdk/crash/model/a;->mAppName:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->v(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kwad/sdk/crash/model/a;->beC:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->w(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kwad/sdk/crash/model/a;->beB:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->x(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/c;->beM:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->y(Lcom/kwad/sdk/crash/c$a;)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/crash/model/c;->beN:I

    .line 31
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->o(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/c;->mSdkVersion:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->z(Lcom/kwad/sdk/crash/c$a;)I

    move-result v1

    iput v1, v0, Lcom/kwad/sdk/crash/model/c;->beL:I

    .line 33
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->A(Lcom/kwad/sdk/crash/c$a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/kwad/sdk/crash/model/c;->beK:Ljava/lang/String;

    .line 34
    iget v1, p1, Lcom/kwad/sdk/crash/c$a;->sdkType:I

    iput v1, v0, Lcom/kwad/sdk/crash/model/c;->beO:I

    .line 35
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->B(Lcom/kwad/sdk/crash/c$a;)Lcom/kwad/sdk/crash/h;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/c;->bdG:Lcom/kwad/sdk/crash/h;

    .line 36
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->C(Lcom/kwad/sdk/crash/c$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/crash/c;->bdH:[Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/kwad/sdk/crash/c$a;->bdY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/kwad/sdk/crash/c;->bdI:[Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->D(Lcom/kwad/sdk/crash/c$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    invoke-static {p1}, Lcom/kwad/sdk/crash/c$a;->E(Lcom/kwad/sdk/crash/c$a;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/kwad/sdk/crash/c;->bdv:D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/kwad/sdk/crash/c$a;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/sdk/crash/c;-><init>(Lcom/kwad/sdk/crash/c$a;)V

    return-void
.end method

.method public static synthetic Qb()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/crash/c;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final Qa()Lcom/kwad/sdk/crash/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/crash/c;->bdK:Lcom/kwad/sdk/crash/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isDebugMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/sdk/crash/c;->bdJ:Z

    .line 2
    .line 3
    return v0
.end method
