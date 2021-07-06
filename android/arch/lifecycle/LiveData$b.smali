.class abstract Landroid/arch/lifecycle/LiveData$b;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field final c:Landroid/arch/lifecycle/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:Z

.field e:I

.field final synthetic f:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/k;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 387
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 385
    iput p1, p0, Landroid/arch/lifecycle/LiveData$b;->e:I

    .line 388
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$b;->c:Landroid/arch/lifecycle/k;

    return-void
.end method


# virtual methods
.method a(Z)V
    .registers 6

    .line 401
    iget-boolean v0, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 406
    :cond_5
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    .line 407
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 408
    :goto_13
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v2

    iget-boolean v3, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, -0x1

    :goto_1f
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    if-eqz p1, :cond_2e

    .line 409
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-eqz p1, :cond_2e

    .line 410
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 412
    :cond_2e
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result p1

    if-nez p1, :cond_3f

    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-nez p1, :cond_3f

    .line 413
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {p1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 415
    :cond_3f
    iget-boolean p1, p0, Landroid/arch/lifecycle/LiveData$b;->d:Z

    if-eqz p1, :cond_48

    .line 416
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$b;->f:Landroid/arch/lifecycle/LiveData;

    invoke-static {p1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$b;)V

    :cond_48
    return-void
.end method

.method abstract a()Z
.end method

.method a(Landroid/arch/lifecycle/e;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method b()V
    .registers 1

    return-void
.end method
