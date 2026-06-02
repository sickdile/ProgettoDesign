using Unity.AI.Navigation;
using UnityEngine;
using UnityEngine.AI;

namespace UtilityComponent
{
    public class NavMeshToMesh : MonoBehaviour
    {
        [SerializeField]
        NavMeshSurface surface;
        [SerializeField]
        GameObject meshObject;
        
        private Mesh mesh;

        void Start()
        {
            if (!surface.enabled)
            {
                surface.BuildNavMesh();
            }
            var _triangulation = NavMesh.CalculateTriangulation();
            mesh = new Mesh
            {
                vertices = _triangulation.vertices,
                triangles = _triangulation.indices
            };
            
            meshObject.GetComponent<MeshFilter>().mesh = mesh;
            meshObject.GetComponent<MeshCollider>().sharedMesh = meshObject.GetComponent<MeshFilter>().mesh;
            #if UNITY_EDITOR
            Debug.Log(meshObject.GetComponent<MeshFilter>().mesh.vertexCount + " vertices, for teleportation area");
            #endif
        }
    }
}
