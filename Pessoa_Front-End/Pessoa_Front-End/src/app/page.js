"use client"
import Link from 'next/link';
import { useRouter } from 'next/navigation';

export default async function Home() {
 const router = useRouter();
  const req = await fetch("http://localhost:3003/produto", {
    cache: "no-cache"
  });
  const produtos = await req.json();
  
  const remover = async(id) => {
    const codigo = {id:parseInt(id)}
    const idJson = JSON.stringify(codigo);
    try {
        fetch("http://localhost:3003/produto", {
            method: "DELETE",
            headers: { 'content-type': 'application/json' },
            body: idJson
        })
        router.refresh();
    } catch (error) {
        alert("Ocorreu um erro" + error)
    }
}
  return (
    <main> <Link href="/cadastro" className='voltar'> CADASTRAR </Link>

      {produtos.map(produtos => (
        <div key={produtos.codigo}>
          <p>{produtos.titulo}</p>
          <p>{produtos.data_cadastro}</p>
          <p>{produtos.preco}</p>
          <p>{produtos.descricao}</p>
          <p>{produtos.imagem}</p>
          <button onClick={e => e.preventDefault(remover(produtos.codigo))}>REMOVER</button>
          <Link href={`/produto/${produtos.codigo}`}>ver mais</Link>
        </div>
      ))}
    </main>
  )
}