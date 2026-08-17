.class public final enum Lcom/ubix/ssp/open/UBiXInitManger$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubix/ssp/open/UBiXInitManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ubix/ssp/open/UBiXInitManger$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ubix/ssp/open/UBiXInitManger$a;

.field public static final enum b:Lcom/ubix/ssp/open/UBiXInitManger$a;

.field private static final synthetic c:[Lcom/ubix/ssp/open/UBiXInitManger$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/ubix/ssp/open/UBiXInitManger$a;

    const-string v1, "TEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ubix/ssp/open/UBiXInitManger$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ubix/ssp/open/UBiXInitManger$a;->a:Lcom/ubix/ssp/open/UBiXInitManger$a;

    new-instance v1, Lcom/ubix/ssp/open/UBiXInitManger$a;

    const-string v2, "ONLINE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ubix/ssp/open/UBiXInitManger$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ubix/ssp/open/UBiXInitManger$a;->b:Lcom/ubix/ssp/open/UBiXInitManger$a;

    filled-new-array {v0, v1}, [Lcom/ubix/ssp/open/UBiXInitManger$a;

    move-result-object v0

    sput-object v0, Lcom/ubix/ssp/open/UBiXInitManger$a;->c:[Lcom/ubix/ssp/open/UBiXInitManger$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ubix/ssp/open/UBiXInitManger$a;
    .locals 1

    const-class v0, Lcom/ubix/ssp/open/UBiXInitManger$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ubix/ssp/open/UBiXInitManger$a;

    return-object p0
.end method

.method public static values()[Lcom/ubix/ssp/open/UBiXInitManger$a;
    .locals 1

    sget-object v0, Lcom/ubix/ssp/open/UBiXInitManger$a;->c:[Lcom/ubix/ssp/open/UBiXInitManger$a;

    invoke-virtual {v0}, [Lcom/ubix/ssp/open/UBiXInitManger$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ubix/ssp/open/UBiXInitManger$a;

    return-object v0
.end method
