.class public abstract Lcom/czhj/sdk/common/mta/PointEntityCrash;
.super Lcom/czhj/sdk/common/mta/PointEntitySuper;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/czhj/sdk/common/mta/PointEntityCrash;->b:J

    return-void
.end method


# virtual methods
.method public getCrashMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/czhj/sdk/common/mta/PointEntityCrash;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashTime()J
    .locals 2

    iget-wide v0, p0, Lcom/czhj/sdk/common/mta/PointEntityCrash;->b:J

    return-wide v0
.end method

.method public setCrashMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/czhj/sdk/common/mta/PointEntityCrash;->a:Ljava/lang/String;

    return-void
.end method

.method public setCrashTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/czhj/sdk/common/mta/PointEntityCrash;->b:J

    return-void
.end method
