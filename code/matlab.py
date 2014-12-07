import numpy as np
from dolfin import *
from scipy.linalg import eigh

mesh = Mesh('domain.xml')
boundaries = MeshFunction('size_t', mesh, 'domain_facet_region.xml')

V = FunctionSpace(mesh, 'CG', 1)
u = TrialFunction(V)
v = TestFunction(V)

a = inner(grad(u), grad(v))*dx
m = inner(u, v)*dx
L = inner(Constant(0), v)*dx
bcs = [DirichletBC(V, Constant(0), boundaries, 1),
       DirichletBC(V, Constant(0), boundaries, 2)]

A, _ = assemble_system(a, L, bcs)
M, _ = assemble_system(m, L, bcs)

values, vectors = eigh(A.array(), M.array())

logo = Function(V)
logo.vector()[:] = np.ascontiguousarray(vectors[20, :])
plot(logo)
interactive()
