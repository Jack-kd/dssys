.class Lcom/ubix/ssp/ad/e/a0/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/ad/e/a0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->c:Z

    const/4 p4, -0x1

    iput p4, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->d:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, -0x1

    iput p5, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->d:I

    iput-object p1, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->b:J

    iput-boolean p4, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->c:Z

    return-void
.end method

.method public static synthetic a(Lcom/ubix/ssp/ad/e/a0/d$b;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->c:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/ubix/ssp/ad/e/a0/d$b;->b:J

    return-wide v0
.end method
