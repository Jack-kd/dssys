.class public final Lcom/ubix/ssp/ad/e/y/c/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ubix/ssp/ad/e/y/c/e$b;,
        Lcom/ubix/ssp/ad/e/y/c/e$c;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/ubix/ssp/ad/e/y/c/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ubix/ssp/ad/e/y/c/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ubix/ssp/ad/e/y/c/e$b;-><init>(Lcom/ubix/ssp/ad/e/y/c/e$a;)V

    sput-object v0, Lcom/ubix/ssp/ad/e/y/c/e;->a:Lcom/ubix/ssp/ad/e/y/c/e$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/ubix/ssp/ad/e/y/c/e$c;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/ad/e/y/c/e;->a:Lcom/ubix/ssp/ad/e/y/c/e$c;

    return-object v0
.end method
