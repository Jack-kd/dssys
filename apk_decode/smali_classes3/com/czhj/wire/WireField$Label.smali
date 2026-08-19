.class public final enum Lcom/czhj/wire/WireField$Label;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/czhj/wire/WireField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/czhj/wire/WireField$Label;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/czhj/wire/WireField$Label;

.field public static final enum ONE_OF:Lcom/czhj/wire/WireField$Label;

.field public static final enum OPTIONAL:Lcom/czhj/wire/WireField$Label;

.field public static final enum PACKED:Lcom/czhj/wire/WireField$Label;

.field public static final enum REPEATED:Lcom/czhj/wire/WireField$Label;

.field public static final enum REQUIRED:Lcom/czhj/wire/WireField$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/czhj/wire/WireField$Label;

    const-string v1, "REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/czhj/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/czhj/wire/WireField$Label;->REQUIRED:Lcom/czhj/wire/WireField$Label;

    new-instance v1, Lcom/czhj/wire/WireField$Label;

    const-string v2, "OPTIONAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/czhj/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/czhj/wire/WireField$Label;->OPTIONAL:Lcom/czhj/wire/WireField$Label;

    new-instance v2, Lcom/czhj/wire/WireField$Label;

    const-string v3, "REPEATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/czhj/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;

    new-instance v3, Lcom/czhj/wire/WireField$Label;

    const-string v4, "ONE_OF"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/czhj/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/czhj/wire/WireField$Label;->ONE_OF:Lcom/czhj/wire/WireField$Label;

    new-instance v4, Lcom/czhj/wire/WireField$Label;

    const-string v5, "PACKED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/czhj/wire/WireField$Label;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/czhj/wire/WireField$Label;->PACKED:Lcom/czhj/wire/WireField$Label;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/czhj/wire/WireField$Label;

    move-result-object v0

    sput-object v0, Lcom/czhj/wire/WireField$Label;->$VALUES:[Lcom/czhj/wire/WireField$Label;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/czhj/wire/WireField$Label;
    .locals 1

    const-class v0, Lcom/czhj/wire/WireField$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/czhj/wire/WireField$Label;

    return-object p0
.end method

.method public static values()[Lcom/czhj/wire/WireField$Label;
    .locals 1

    sget-object v0, Lcom/czhj/wire/WireField$Label;->$VALUES:[Lcom/czhj/wire/WireField$Label;

    invoke-virtual {v0}, [Lcom/czhj/wire/WireField$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/czhj/wire/WireField$Label;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-object v0, Lcom/czhj/wire/WireField$Label;->REPEATED:Lcom/czhj/wire/WireField$Label;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/czhj/wire/WireField$Label;->PACKED:Lcom/czhj/wire/WireField$Label;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    sget-object v0, Lcom/czhj/wire/WireField$Label;->PACKED:Lcom/czhj/wire/WireField$Label;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    sget-object v0, Lcom/czhj/wire/WireField$Label;->ONE_OF:Lcom/czhj/wire/WireField$Label;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
